package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.PartTwo;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IPartTwoService {

	public Page countPartTwo(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listPartTwo(JSONObject json);

	public PartTwo createPartTwo(JSONObject json) throws Exception;

	public PartTwo updatePartTwo(int id, JSONObject json) throws Exception;

	public int deletePartTwo(int id, JSONObject json) throws Exception;

	public PartTwo findPartTwo(int id);

	public int changePartTwo(JSONObject json) throws Exception;

}