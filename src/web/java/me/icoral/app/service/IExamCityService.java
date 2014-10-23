package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.ExamCity;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IExamCityService {

	public Page countExamCity(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listExamCity(JSONObject json);

	public ExamCity createExamCity(JSONObject json) throws Exception;

	public ExamCity updateExamCity(int id, JSONObject json) throws Exception;

	public int deleteExamCity(int id, JSONObject json) throws Exception;

	public ExamCity findExamCity(int id);

}