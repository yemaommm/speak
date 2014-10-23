package me.icoral.app.service;

import java.util.List;

import me.icoral.app.db.entity.Seo;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface ISeoService {

	public Page countSeo(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listSeo(JSONObject json);

	public Seo updateSeo(int id, JSONObject json) throws Exception;

	public Seo findSeo(int id);

	public Seo findSeoByType(String type);

}