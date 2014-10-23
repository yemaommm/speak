package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.PartTwoDao;
import me.icoral.app.db.entity.PartTwo;
import me.icoral.app.service.IPartTwoService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartTwoServiceImpl implements IPartTwoService {

	@Autowired
	private PartTwoDao dao;

	@Override
	public Page countPartTwo(JSONObject json) {
		long count = dao.count(PartTwo.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listPartTwo(JSONObject json) {
		return dao.list(PartTwo.class, json);
	}

	@Override
	public PartTwo createPartTwo(JSONObject json) throws Exception {
		PartTwo partTwo = new PartTwo();
		BaseUtils.convert(json, partTwo);
		dao.save(partTwo);

		partTwo.setSeq(partTwo.getId().toString());
		dao.update(partTwo);

		return partTwo;
	}

	@Override
	public PartTwo updatePartTwo(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		PartTwo partTwo = (PartTwo) dao.get(PartTwo.class, id);
		BaseUtils.convert(json, partTwo);
		dao.update(partTwo);
		return partTwo;
	}

	@Override
	public int deletePartTwo(int id, JSONObject json) throws Exception {
		PartTwo partTwo = (PartTwo) dao.get(PartTwo.class, id);
		dao.delete(partTwo);
		return id;
	}

	@Override
	public PartTwo findPartTwo(int id) {
		return (PartTwo) dao.get(PartTwo.class, id);
	}

	@Override
	public int changePartTwo(JSONObject json) throws Exception {
		Integer id1 = json.getInt("id1");
		Integer id2 = json.getInt("id2");
		PartTwo obj1 = (PartTwo) dao.get(PartTwo.class, id1);
		PartTwo obj2 = (PartTwo) dao.get(PartTwo.class, id2);
		String seq1 = obj1.getSeq();
		String seq2 = obj2.getSeq();
		obj1.setSeq(seq2);
		obj2.setSeq(seq1);
		dao.update(obj1);
		dao.update(obj2);
		return 1;
	}

}