package me.icoral.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.icoral.app.db.dao.SeoDao;
import me.icoral.app.db.entity.Seo;
import me.icoral.app.service.ISeoService;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

@Service
public class SeoServiceImpl implements ISeoService {

	@Autowired
	private SeoDao dao;

	@Override
	public Page countSeo(JSONObject json) {
		long count = dao.count(Seo.class, json).longValue();
		int size = 10;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listSeo(JSONObject json) {
		return dao.list(Seo.class, json);
	}

	@Override
	public Seo updateSeo(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		Seo seo = (Seo) dao.get(Seo.class, Integer.valueOf(id));
		BaseUtils.convert(json, seo);
		dao.update(seo);
		return seo;
	}

	@Override
	public Seo findSeo(int id) {
		return (Seo) dao.get(Seo.class, Integer.valueOf(id));
	}

	@Override
	public Seo findSeoByType(String type) {
		return dao.findSeoByName(type);
	}

}