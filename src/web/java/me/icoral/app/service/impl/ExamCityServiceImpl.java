package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.ExamCityDao;
import me.icoral.app.db.entity.ExamCity;
import me.icoral.app.service.IExamCityService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamCityServiceImpl implements IExamCityService {

	@Autowired
	private ExamCityDao dao;

	@Override
	public Page countExamCity(JSONObject json) {
		long count = dao.count(ExamCity.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listExamCity(JSONObject json) {
		return dao.list(ExamCity.class, json);
	}

	@Override
	public ExamCity createExamCity(JSONObject json) throws Exception {
		ExamCity examCity = new ExamCity();
		BaseUtils.convert(json, examCity);
		dao.save(examCity);
		return examCity;
	}

	@Override
	public ExamCity updateExamCity(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		ExamCity examCity = (ExamCity) dao.get(ExamCity.class, id);
		BaseUtils.convert(json, examCity);
		dao.update(examCity);
		return examCity;
	}

	@Override
	public int deleteExamCity(int id, JSONObject json) throws Exception {
		ExamCity examCity = (ExamCity) dao.get(ExamCity.class, id);
		dao.delete(examCity);
		return id;
	}

	@Override
	public ExamCity findExamCity(int id) {
		return (ExamCity) dao.get(ExamCity.class, id);
	}

}