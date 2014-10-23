package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.RecordTopicView;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IRecordTopicService {

	public Page countRecordTopic(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listRecordTopic(JSONObject json);

	public RecordTopicView createRecordTopic(JSONObject json) throws Exception;

	public RecordTopicView updateRecordTopic(int id, JSONObject json) throws Exception;

	public int deleteRecordTopic(int id, JSONObject json) throws Exception;

	public RecordTopicView findRecordTopic(int id);

}