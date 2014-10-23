package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.PartOneQuestion;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IPartOneQuesService {

	public Page countPartOneQuestion(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listPartOneQuestion(JSONObject json);

	public PartOneQuestion createPartOneQuestion(JSONObject json) throws Exception;

	public PartOneQuestion updatePartOneQuestion(int id, JSONObject json) throws Exception;

	public int deletePartOneQuestion(int id, JSONObject json) throws Exception;

	public PartOneQuestion findPartOneQuestion(int id);

	public int changePartOneQuestion(JSONObject json) throws Exception;

}