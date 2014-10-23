package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.ExamPoint;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IExamPointService {

	public Page countExamPoint(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listExamPoint(JSONObject json);

	public ExamPoint createExamPoint(JSONObject json) throws Exception;

	public ExamPoint updateExamPoint(int id, JSONObject json) throws Exception;

	public int deleteExamPoint(int id, JSONObject json) throws Exception;

	public ExamPoint findExamPoint(int id);

}