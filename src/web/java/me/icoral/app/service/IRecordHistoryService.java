package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.RecordHistory;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IRecordHistoryService {

	public Page countRecordHistory(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listRecordHistory(JSONObject json);

	public RecordHistory createRecordHistory(JSONObject json) throws Exception;

	public RecordHistory updateRecordHistory(int id, JSONObject json) throws Exception;

	public int updateRecordHistoryS(String ids) throws Exception;

	public int deleteRecordHistory(int id, JSONObject json) throws Exception;

	public RecordHistory findRecordHistory(int id);

}