package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.History;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IHistoryService {

	public Page countHistory(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listHistory(JSONObject json);

	public History createHistory(JSONObject json) throws Exception;

	public History updateHistory(int id, JSONObject json) throws Exception;

	public int deleteHistory(int id, JSONObject json) throws Exception;

	public History findHistory(int id);

}