package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.ResourceDao;
import me.icoral.app.db.entity.Resource;
import me.icoral.app.service.IResourceService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResourceServiceImpl implements IResourceService {

	@Autowired
	private ResourceDao dao;

	@Override
	public Page countResource(JSONObject json) {
		long count = dao.count(Resource.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listResource(JSONObject json) {
		return dao.list(Resource.class, json);
	}

	@Override
	public Resource createResource(JSONObject json) throws Exception {
		Resource resource = new Resource();
		BaseUtils.convert(json, resource);
		if (json.containsKey("content")) {
			resource.setContent(json.getString("content"));
		}
		dao.save(resource);

		resource.setSeq(resource.getId().toString());
		dao.update(resource);

		return resource;
	}

	@Override
	public Resource updateResource(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		Resource resource = (Resource) dao.get(Resource.class, id);
		BaseUtils.convert(json, resource);
		if (json.containsKey("content")) {
			resource.setContent(json.getString("content"));
		}
		dao.update(resource);
		return resource;
	}

	@Override
	public int deleteResource(int id, JSONObject json) throws Exception {
		Resource resource = (Resource) dao.get(Resource.class, id);
		dao.delete(resource);
		return id;
	}

	@Override
	public Resource findResource(int id) {
		return (Resource) dao.get(Resource.class, id);
	}

	@Override
	public Resource findResource(String type) {
		return (Resource) dao.findResourceByType(type);
	}

	@Override
	public int changeResource(JSONObject json) throws Exception {
		Integer id1 = json.getInt("id1");
		Integer id2 = json.getInt("id2");
		Resource obj1 = (Resource) dao.get(Resource.class, id1);
		Resource obj2 = (Resource) dao.get(Resource.class, id2);
		String seq1 = obj1.getSeq();
		String seq2 = obj2.getSeq();
		obj1.setSeq(seq2);
		obj2.setSeq(seq1);
		dao.update(obj1);
		dao.update(obj2);
		return 1;
	}

}