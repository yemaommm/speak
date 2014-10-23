package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.ExamTimeDao;
import me.icoral.app.db.entity.ExamTime;
import me.icoral.app.service.IExamTimeService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamTimeServiceImpl implements IExamTimeService {

	@Autowired
	private ExamTimeDao dao;

	@Override
	public Page countExamTime(JSONObject json) {
		long count = dao.count(ExamTime.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listExamTime(JSONObject json) {
		return dao.list(ExamTime.class, json);
	}

	@Override
	public ExamTime createExamTime(JSONObject json) throws Exception {
		ExamTime examTime = new ExamTime();
		BaseUtils.convert(json, examTime);
		dao.save(examTime);
		return examTime;
	}

	@Override
	public ExamTime updateExamTime(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		ExamTime examTime = (ExamTime) dao.get(ExamTime.class, id);
		BaseUtils.convert(json, examTime);
		dao.update(examTime);
		return examTime;
	}

	@Override
	public int deleteExamTime(int id, JSONObject json) throws Exception {
		ExamTime examTime = (ExamTime) dao.get(ExamTime.class, id);
		dao.delete(examTime);
		return id;
	}

	@Override
	public ExamTime findExamTime(int id) {
		return (ExamTime) dao.get(ExamTime.class, id);
	}

}