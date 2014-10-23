package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.RecordOneDao;
import me.icoral.app.db.entity.RecordOne;
import me.icoral.app.service.IRecordOneService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordOneServiceImpl implements IRecordOneService {

	@Autowired
	private RecordOneDao dao;

	@Override
	public Page countRecordOne(JSONObject json) {
		long count = dao.count(RecordOne.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listRecordOne(JSONObject json) {
		return dao.list(RecordOne.class, json);
	}

	@Override
	public RecordOne createRecordOne(JSONObject json) throws Exception {
		RecordOne recordRecordOne = new RecordOne();
		BaseUtils.convert(json, recordRecordOne);

		if (json.containsKey("partString")) {
			recordRecordOne.setPartString(json.getString("partString"));
		}

		if (json.containsKey("answer")) {
			recordRecordOne.setAnswer(json.getString("answer"));
		}

		dao.save(recordRecordOne);
		return recordRecordOne;
	}

	@Override
	public RecordOne updateRecordOne(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		RecordOne recordRecordOne = (RecordOne) dao.get(RecordOne.class, id);
		BaseUtils.convert(json, recordRecordOne);
		dao.update(recordRecordOne);
		return recordRecordOne;
	}

	@Override
	public int deleteRecordOne(int id, JSONObject json) throws Exception {
		RecordOne recordRecordOne = (RecordOne) dao.get(RecordOne.class, id);
		dao.delete(recordRecordOne);
		return id;
	}

	@Override
	public RecordOne findRecordOne(int id) {
		return (RecordOne) dao.get(RecordOne.class, id);
	}

}