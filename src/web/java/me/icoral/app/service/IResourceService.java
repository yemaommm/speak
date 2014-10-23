package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.Resource;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IResourceService {

	public Page countResource(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listResource(JSONObject json);

	public Resource createResource(JSONObject json) throws Exception;

	public Resource updateResource(int id, JSONObject json) throws Exception;

	public int deleteResource(int id, JSONObject json) throws Exception;

	public Resource findResource(int id);

	public Resource findResource(String type);

	public int changeResource(JSONObject json) throws Exception;

}