package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.PartOneDao;
import me.icoral.app.db.entity.PartOne;
import me.icoral.app.service.IPartOneService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartOneServiceImpl implements IPartOneService {

	@Autowired
	private PartOneDao dao;

	@Override
	public Page countPartOne(JSONObject json) {
		long count = dao.count(PartOne.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listPartOne(JSONObject json) {
		return dao.list(PartOne.class, json);
	}

	@Override
	public PartOne createPartOne(JSONObject json) throws Exception {
		PartOne partOne = new PartOne();
		BaseUtils.convert(json, partOne);
		dao.save(partOne);

		partOne.setSeq(partOne.getId().toString());
		dao.update(partOne);

		return partOne;
	}

	@Override
	public PartOne updatePartOne(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		PartOne partOne = (PartOne) dao.get(PartOne.class, id);
		BaseUtils.convert(json, partOne);
		dao.update(partOne);
		return partOne;
	}

	@Override
	public int deletePartOne(int id, JSONObject json) throws Exception {
		PartOne partOne = (PartOne) dao.get(PartOne.class, id);
		dao.delete(partOne);
		return id;
	}

	@Override
	public PartOne findPartOne(int id) {
		return (PartOne) dao.get(PartOne.class, id);
	}

	@Override
	public int changePartOne(JSONObject json) throws Exception {
		Integer id1 = json.getInt("id1");
		Integer id2 = json.getInt("id2");
		PartOne obj1 = (PartOne) dao.get(PartOne.class, id1);
		PartOne obj2 = (PartOne) dao.get(PartOne.class, id2);
		String seq1 = obj1.getSeq();
		String seq2 = obj2.getSeq();
		obj1.setSeq(seq2);
		obj2.setSeq(seq1);
		dao.update(obj1);
		dao.update(obj2);
		return 1;
	}

}