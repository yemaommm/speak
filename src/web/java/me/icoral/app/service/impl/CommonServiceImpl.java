package me.icoral.app.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import me.icoral.app.service.ICommonService;
import me.icoral.app.service.IPartOneQuesService;
import me.icoral.app.service.IPartThreeService;
import me.icoral.base.util.BaseUtils;
import me.icoral.base.util.ServerConfig;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements ICommonService {

	@Autowired
	private IPartOneQuesService oneService;

	@Autowired
	private IPartThreeService threeService;

	@Override
	public int unZipIMG(JSONObject json) {
		String uploadDir = ServerConfig.getProperty("upload.dir");
		String catalog = json.getString("catalog");
		String file = json.getString("file");
		String id = json.getString("id");
		String type = json.getString("type");// one or three

		String fileName = uploadDir + File.separator + catalog + File.separator + file;

		FileInputStream fis = null;
		try {
			fis = new FileInputStream(fileName);

			ZipInputStream zis = new ZipInputStream(fis);
			ZipEntry entry = null;
			while ((entry = zis.getNextEntry()) != null) {
				String zipPath = entry.getName();
				try {
					if (entry.isDirectory()) {
						File zipFolder = new File(uploadDir + File.separator + catalog + File.separator + zipPath);
						if (!zipFolder.exists()) {
							zipFolder.mkdirs();
						}
					} else {
						String uuid = BaseUtils.createUUID();
						File zipFile = new File(uploadDir + File.separator + catalog + File.separator + uuid);
						if (!zipFile.exists()) {
							File pathDir = zipFile.getParentFile();
							pathDir.mkdirs();
							zipFile.createNewFile();
						}

						FileOutputStream outputStream = new FileOutputStream(zipFile);
						int bread;
						while ((bread = zis.read()) != -1) {
							outputStream.write(bread);
						}
						outputStream.close();

						JSONObject obj = new JSONObject();
						obj.put("mp3upid", uuid);
						obj.put("mp3name", zipPath);

						if (type.equals("one")) {
							obj.put("partOneId", id);
							oneService.createPartOneQuestion(obj);
						} else if (type.equals("three")) {
							obj.put("partTwoId", id);
							threeService.createPartThree(obj);
						}
					}
					System.out.println("成功解压:" + zipPath);
				} catch (Exception e) {
					System.out.println("解压" + zipPath + "失败");
					continue;
				}
			}
			zis.close();
			fis.close();
			System.out.println("解压结束");

			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			try {
				fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}