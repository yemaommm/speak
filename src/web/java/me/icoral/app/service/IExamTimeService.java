package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.ExamTime;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IExamTimeService {

	public Page countExamTime(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listExamTime(JSONObject json);

	public ExamTime createExamTime(JSONObject json) throws Exception;

	public ExamTime updateExamTime(int id, JSONObject json) throws Exception;

	public int deleteExamTime(int id, JSONObject json) throws Exception;

	public ExamTime findExamTime(int id);

}