package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.PartThreeDao;
import me.icoral.app.db.entity.PartThree;
import me.icoral.app.service.IPartThreeService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartThreeServiceImpl implements IPartThreeService {

	@Autowired
	private PartThreeDao dao;

	@Override
	public Page countPartThree(JSONObject json) {
		long count = dao.count(PartThree.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listPartThree(JSONObject json) {
		return dao.list(PartThree.class, json);
	}

	@Override
	public PartThree createPartThree(JSONObject json) throws Exception {
		PartThree partThree = new PartThree();
		BaseUtils.convert(json, partThree);
		dao.save(partThree);

		partThree.setSeq(partThree.getId().toString());
		dao.update(partThree);

		return partThree;
	}

	@Override
	public PartThree updatePartThree(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		PartThree partThree = (PartThree) dao.get(PartThree.class, id);
		BaseUtils.convert(json, partThree);
		dao.update(partThree);
		return partThree;
	}

	@Override
	public int deletePartThree(int id, JSONObject json) throws Exception {
		PartThree partThree = (PartThree) dao.get(PartThree.class, id);
		dao.delete(partThree);
		return id;
	}

	@Override
	public PartThree findPartThree(int id) {
		return (PartThree) dao.get(PartThree.class, id);
	}

	@Override
	public int changePartThree(JSONObject json) throws Exception {
		Integer id1 = json.getInt("id1");
		Integer id2 = json.getInt("id2");
		PartThree obj1 = (PartThree) dao.get(PartThree.class, id1);
		PartThree obj2 = (PartThree) dao.get(PartThree.class, id2);
		String seq1 = obj1.getSeq();
		String seq2 = obj2.getSeq();
		obj1.setSeq(seq2);
		obj2.setSeq(seq1);
		dao.update(obj1);
		dao.update(obj2);
		return 1;
	}

}