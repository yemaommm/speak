package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.PartOne;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IPartOneService {

	public Page countPartOne(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listPartOne(JSONObject json);

	public PartOne createPartOne(JSONObject json) throws Exception;

	public PartOne updatePartOne(int id, JSONObject json) throws Exception;

	public int deletePartOne(int id, JSONObject json) throws Exception;

	public PartOne findPartOne(int id);

	public int changePartOne(JSONObject json) throws Exception;

}