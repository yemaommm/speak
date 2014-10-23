package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.ExamPointDao;
import me.icoral.app.db.entity.ExamPoint;
import me.icoral.app.service.IExamPointService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamPointServiceImpl implements IExamPointService {

	@Autowired
	private ExamPointDao dao;

	@Override
	public Page countExamPoint(JSONObject json) {
		long count = dao.count(ExamPoint.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listExamPoint(JSONObject json) {
		return dao.list(ExamPoint.class, json);
	}

	@Override
	public ExamPoint createExamPoint(JSONObject json) throws Exception {
		ExamPoint examPoint = new ExamPoint();
		BaseUtils.convert(json, examPoint);
		dao.save(examPoint);
		return examPoint;
	}

	@Override
	public ExamPoint updateExamPoint(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		ExamPoint examPoint = (ExamPoint) dao.get(ExamPoint.class, id);
		BaseUtils.convert(json, examPoint);
		dao.update(examPoint);
		return examPoint;
	}

	@Override
	public int deleteExamPoint(int id, JSONObject json) throws Exception {
		ExamPoint examPoint = (ExamPoint) dao.get(ExamPoint.class, id);
		dao.delete(examPoint);
		return id;
	}

	@Override
	public ExamPoint findExamPoint(int id) {
		return (ExamPoint) dao.get(ExamPoint.class, id);
	}

}