package me.icoral.core.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.icoral.app.db.entity.PartOneQuestion;
import me.icoral.app.db.entity.PartThree;
import me.icoral.app.db.entity.PartTwo;
import me.icoral.app.service.IPartOneQuesService;
import me.icoral.app.service.IPartThreeService;
import me.icoral.app.service.IPartTwoService;
import me.icoral.app.service.IRecordOneService;
import me.icoral.base.util.ServerConfig;
import me.icoral.core.db.entity.UploadItem;
import me.icoral.core.service.IBaseService;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;

@Controller
public class UploadController {

	private final static int MAXFILESIZE = 1024 * 1024 * 1024;

	@Autowired
	private IBaseService service;

	@Autowired
	private IRecordOneService recordService;

	@Autowired
	private IPartOneQuesService oneQuesService;

	@Autowired
	private IPartTwoService twoService;

	@Autowired
	private IPartThreeService threeService;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public void upload(ModelMap model, DefaultMultipartHttpServletRequest request, HttpServletResponse response) {

		String upid = request.getParameter("upid");
		String catalog = request.getParameter("catalog");
		String uploadDir = ServerConfig.getProperty("upload.dir") + File.separator + catalog;
		String fileName = uploadDir + File.separator + upid;

		File dir = new File(uploadDir);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		MultipartFile file = request.getFile("Filedata");
		if (file.getSize() > MAXFILESIZE) {
			return;
		}

		InputStream inputStream = null;
		OutputStream outputStream = null;

		String originalName = file.getOriginalFilename();

		try {
			inputStream = file.getInputStream();
			outputStream = new FileOutputStream(fileName);

			int readBytes = 0;
			byte[] buffer = new byte[10000];
			while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
				outputStream.write(buffer, 0, readBytes);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		UploadItem updateItem = new UploadItem();
		updateItem.setAbsolutepath(fileName);
		updateItem.setFileSize(file.getSize());
		updateItem.setOriginalName(originalName);
		updateItem.setUpid(upid);
		updateItem.setCatalog(catalog);
		updateItem.setCreatedatetime(new Date());
		service.saveUploadItem(updateItem);
	}

	@RequestMapping(value = "/download/{catalog}/{file}", method = RequestMethod.GET)
	public void pic(@PathVariable("file") String file, @PathVariable("catalog") String catalog, HttpServletRequest request, HttpServletResponse response) {
		String uploadDir = ServerConfig.getProperty("upload.dir");
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(uploadDir + File.separator + catalog + File.separator + file);
			byte[] b = new byte[fis.available()];
			fis.read(b);
			response.getOutputStream().write(b);
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@RequestMapping(value = "/uploadRecord", method = RequestMethod.POST)
	public void uploadRecord(ModelMap model, DefaultMultipartHttpServletRequest request, HttpServletResponse response) throws Exception {

		String upid = request.getParameter("upid");
		String catalog = request.getParameter("catalog");
		String uploadDir = ServerConfig.getProperty("upload.dir") + File.separator + catalog;
		String fileName = uploadDir + File.separator + upid;

		File dir = new File(uploadDir);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		MultipartFile file = request.getFile("Filedata");
		if (file.getSize() > MAXFILESIZE) {
			return;
		}

		InputStream inputStream = null;
		OutputStream outputStream = null;

		String originalName = file.getOriginalFilename();

		try {
			inputStream = file.getInputStream();
			outputStream = new FileOutputStream(fileName);

			int readBytes = 0;
			byte[] buffer = new byte[10000];
			while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
				outputStream.write(buffer, 0, readBytes);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		UploadItem updateItem = new UploadItem();
		updateItem.setAbsolutepath(fileName);
		updateItem.setFileSize(file.getSize());
		updateItem.setOriginalName(originalName);
		updateItem.setUpid(upid);
		updateItem.setCatalog(catalog);
		updateItem.setCreatedatetime(new Date());
		service.saveUploadItem(updateItem);

		String sn = request.getParameter("sn");
		String recordId = request.getParameter("recordId");
		String seconds = request.getParameter("seconds");

		JSONObject record = new JSONObject();

		String partId = request.getParameter("partId");
		String partType = request.getParameter("partType");
		if (partType.equals("part1")) {
			PartOneQuestion poq = oneQuesService.findPartOneQuestion(Integer.valueOf(partId));
			record.put("partString", poq.getTitle());
			record.put("answer", poq.getContent());
		} else if (partType.equals("part2")) {
			PartTwo pt = twoService.findPartTwo(Integer.valueOf(partId));
			record.put("partString", pt.getTitle() + "<br>" + pt.getShouldSay());
			record.put("answer", pt.getContent());
		} else if (partType.equals("part3")) {
			PartThree pt = threeService.findPartThree(Integer.valueOf(partId));
			record.put("partString", pt.getTitle());
			record.put("answer", pt.getContent());
		}

		record.put("sn", sn);
		record.put("recordId", recordId);
		record.put("seconds", seconds);
		record.put("upid", upid);
		record.put("status", 0);
		recordService.createRecordOne(record);
	}

	@RequestMapping(value = "/uploadRecordPoint", method = RequestMethod.POST)
	public void uploadRecordPoint(ModelMap model, DefaultMultipartHttpServletRequest request, HttpServletResponse response) throws Exception {

		String upid = request.getParameter("upid");
		String catalog = request.getParameter("catalog");
		String uploadDir = ServerConfig.getProperty("upload.dir") + File.separator + catalog;
		String fileName = uploadDir + File.separator + upid;

		File dir = new File(uploadDir);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		MultipartFile file = request.getFile("Filedata");
		if (file.getSize() > MAXFILESIZE) {
			return;
		}

		InputStream inputStream = null;
		OutputStream outputStream = null;

		String originalName = file.getOriginalFilename();

		try {
			inputStream = file.getInputStream();
			outputStream = new FileOutputStream(fileName);

			int readBytes = 0;
			byte[] buffer = new byte[10000];
			while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
				outputStream.write(buffer, 0, readBytes);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		UploadItem updateItem = new UploadItem();
		updateItem.setAbsolutepath(fileName);
		updateItem.setFileSize(file.getSize());
		updateItem.setOriginalName(originalName);
		updateItem.setUpid(upid);
		updateItem.setCatalog(catalog);
		updateItem.setCreatedatetime(new Date());
		service.saveUploadItem(updateItem);

		String sn = request.getParameter("sn");
		String recordId = request.getParameter("recordId");
		String seconds = request.getParameter("seconds");

		JSONObject record = new JSONObject();

		String partId = request.getParameter("partId");
		String partType = request.getParameter("partType");
		String totalSeconds = request.getParameter("totalSeconds");

		CutRecord.cut("", "", 1, 3);

		if (partType.equals("part1")) {
			PartOneQuestion poq = oneQuesService.findPartOneQuestion(Integer.valueOf(partId));
			record.put("partString", poq.getTitle());
			record.put("answer", poq.getContent());
		} else if (partType.equals("part2")) {
			PartTwo pt = twoService.findPartTwo(Integer.valueOf(partId));
			record.put("partString", pt.getTitle() + "<br>" + pt.getShouldSay());
			record.put("answer", pt.getContent());
		} else if (partType.equals("part3")) {
			PartThree pt = threeService.findPartThree(Integer.valueOf(partId));
			record.put("partString", pt.getTitle());
			record.put("answer", pt.getContent());
		}

		record.put("sn", sn);
		record.put("recordId", recordId);
		record.put("seconds", seconds);
		record.put("upid", upid);
		record.put("status", 0);
		recordService.createRecordOne(record);
	}

}