package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.RecordOne;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IRecordOneService {

	public Page countRecordOne(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listRecordOne(JSONObject json);

	public RecordOne createRecordOne(JSONObject json) throws Exception;

	public RecordOne updateRecordOne(int id, JSONObject json) throws Exception;

	public int deleteRecordOne(int id, JSONObject json) throws Exception;

	public RecordOne findRecordOne(int id);

}