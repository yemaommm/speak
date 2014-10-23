package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.RecordTopicDao;
import me.icoral.app.db.entity.RecordTopic;
import me.icoral.app.db.entity.RecordTopicView;
import me.icoral.app.service.IRecordTopicService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordTopicServiceImpl implements IRecordTopicService {

	@Autowired
	private RecordTopicDao dao;

	@Override
	public Page countRecordTopic(JSONObject json) {
		long count = dao.count(RecordTopic.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listRecordTopic(JSONObject json) {
		return dao.list(RecordTopicView.class, json);
	}

	@Override
	public RecordTopicView createRecordTopic(JSONObject json) throws Exception {
		RecordTopic recordRecordTopic = new RecordTopic();
		BaseUtils.convert(json, recordRecordTopic);
		dao.save(recordRecordTopic);
		return (RecordTopicView) dao.get(RecordTopicView.class, recordRecordTopic.getId());
	}

	@Override
	public RecordTopicView updateRecordTopic(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		RecordTopic recordRecordTopic = (RecordTopic) dao.get(RecordTopic.class, id);
		BaseUtils.convert(json, recordRecordTopic);
		dao.update(recordRecordTopic);
		return (RecordTopicView) dao.get(RecordTopicView.class, id);
	}

	@Override
	public int deleteRecordTopic(int id, JSONObject json) throws Exception {
		RecordTopic recordRecordTopic = (RecordTopic) dao.get(RecordTopic.class, id);
		dao.delete(recordRecordTopic);
		return id;
	}

	@Override
	public RecordTopicView findRecordTopic(int id) {
		return (RecordTopicView) dao.get(RecordTopicView.class, id);
	}

}