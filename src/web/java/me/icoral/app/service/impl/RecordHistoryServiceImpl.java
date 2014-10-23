package me.icoral.app.service.impl;

import java.util.ArrayList;
import java.util.List;

import me.icoral.app.db.dao.RecordHistoryDao;
import me.icoral.app.db.entity.RecordHistory;
import me.icoral.app.db.entity.RecordOne;
import me.icoral.app.service.IRecordHistoryService;
import me.icoral.app.service.IRecordOneService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordHistoryServiceImpl implements IRecordHistoryService {

	@Autowired
	private RecordHistoryDao dao;

	@Autowired
	private IRecordOneService service;

	@Override
	public Page countRecordHistory(JSONObject json) {
		long count = dao.count(RecordHistory.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List listRecordHistory(JSONObject json) {
		List list = dao.list(RecordHistory.class, json);
		List retList = new ArrayList(list.size());
		for (int i = 0; i < list.size(); i++) {
			RecordHistory rh = (RecordHistory) list.get(i);

			JSONObject query = new JSONObject();
			JSONObject $criteria = new JSONObject();
			$criteria.put("recordId", rh.getId());
			query.put("$criteria", $criteria);

			List recordOneList = service.listRecordOne(query);
			JSONArray recordOne = new JSONArray();
			for (int j = 0; j < recordOneList.size(); j++) {
				RecordOne rd = (RecordOne) recordOneList.get(j);
				recordOne.add(rd);
			}

			rh.setRecordOnes(recordOne.toString());
			retList.add(rh);
		}

		return retList;
	}

	@Override
	public RecordHistory createRecordHistory(JSONObject json) throws Exception {
		RecordHistory recordRecordHistory = new RecordHistory();
		BaseUtils.convert(json, recordRecordHistory);
		dao.save(recordRecordHistory);
		return recordRecordHistory;
	}

	@Override
	public RecordHistory updateRecordHistory(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		RecordHistory recordRecordHistory = (RecordHistory) dao.get(RecordHistory.class, id);
		BaseUtils.convert(json, recordRecordHistory);
		dao.update(recordRecordHistory);
		return recordRecordHistory;
	}

	@Override
	public int updateRecordHistoryS(String ids) throws Exception {
		JSONObject update = new JSONObject();
		update.put("status", 1);

		String[] idA = ids.split(",");
		for (int i = 0; i < idA.length; i++) {
			updateRecordHistory(Integer.valueOf(idA[i]), update);
		}

		return 1;
	}

	@Override
	public int deleteRecordHistory(int id, JSONObject json) throws Exception {
		RecordHistory recordRecordHistory = (RecordHistory) dao.get(RecordHistory.class, id);
		dao.delete(recordRecordHistory);
		return id;
	}

	@Override
	public RecordHistory findRecordHistory(int id) {
		return (RecordHistory) dao.get(RecordHistory.class, id);
	}

}