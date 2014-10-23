package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.Question;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IQuestionService {

	public Page countQuestion(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listQuestion(JSONObject json);

	public Question createQuestion(JSONObject json) throws Exception;

	public Question updateQuestion(int id, JSONObject json) throws Exception;

	public int deleteQuestion(int id, JSONObject json) throws Exception;

	public Question findQuestion(int id);

	public Question findQuestionByMp4(String mp4upid);

	public int changeQuestion(JSONObject json) throws Exception;

}