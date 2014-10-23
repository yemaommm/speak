package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.PartThree;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IPartThreeService {

	public Page countPartThree(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listPartThree(JSONObject json);

	public PartThree createPartThree(JSONObject json) throws Exception;

	public PartThree updatePartThree(int id, JSONObject json) throws Exception;

	public int deletePartThree(int id, JSONObject json) throws Exception;

	public PartThree findPartThree(int id);

	public int changePartThree(JSONObject json) throws Exception;

}