package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.HistoryDao;
import me.icoral.app.db.entity.History;
import me.icoral.app.service.IHistoryService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HistoryServiceImpl implements IHistoryService {

	@Autowired
	private HistoryDao dao;

	@Override
	public Page countHistory(JSONObject json) {
		long count = dao.count(History.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listHistory(JSONObject json) {
		return dao.list(History.class, json);
	}

	@Override
	public History createHistory(JSONObject json) throws Exception {
		History history = new History();
		BaseUtils.convert(json, history);
		dao.save(history);
		return history;
	}

	@Override
	public History updateHistory(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		History history = (History) dao.get(History.class, id);
		BaseUtils.convert(json, history);
		dao.update(history);
		return history;
	}

	@Override
	public int deleteHistory(int id, JSONObject json) throws Exception {
		History history = (History) dao.get(History.class, id);
		dao.delete(history);
		return id;
	}

	@Override
	public History findHistory(int id) {
		return (History) dao.get(History.class, id);
	}

}