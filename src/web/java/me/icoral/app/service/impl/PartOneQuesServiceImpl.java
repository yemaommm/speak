package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.PartOneQuestionDao;
import me.icoral.app.db.entity.PartOneQuestion;
import me.icoral.app.service.IPartOneQuesService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartOneQuesServiceImpl implements IPartOneQuesService {

	@Autowired
	private PartOneQuestionDao dao;

	@Override
	public Page countPartOneQuestion(JSONObject json) {
		long count = dao.count(PartOneQuestion.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listPartOneQuestion(JSONObject json) {
		return dao.list(PartOneQuestion.class, json);
	}

	@Override
	public PartOneQuestion createPartOneQuestion(JSONObject json) throws Exception {
		PartOneQuestion partOneQuestion = new PartOneQuestion();
		BaseUtils.convert(json, partOneQuestion);
		dao.save(partOneQuestion);

		partOneQuestion.setSeq(partOneQuestion.getId().toString());
		dao.update(partOneQuestion);

		return partOneQuestion;
	}

	@Override
	public PartOneQuestion updatePartOneQuestion(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		PartOneQuestion partOneQuestion = (PartOneQuestion) dao.get(PartOneQuestion.class, id);
		BaseUtils.convert(json, partOneQuestion);
		dao.update(partOneQuestion);
		return partOneQuestion;
	}

	@Override
	public int deletePartOneQuestion(int id, JSONObject json) throws Exception {
		PartOneQuestion partOneQuestion = (PartOneQuestion) dao.get(PartOneQuestion.class, id);
		dao.delete(partOneQuestion);
		return id;
	}

	@Override
	public PartOneQuestion findPartOneQuestion(int id) {
		return (PartOneQuestion) dao.get(PartOneQuestion.class, id);
	}

	@Override
	public int changePartOneQuestion(JSONObject json) throws Exception {
		Integer id1 = json.getInt("id1");
		Integer id2 = json.getInt("id2");
		PartOneQuestion obj1 = (PartOneQuestion) dao.get(PartOneQuestion.class, id1);
		PartOneQuestion obj2 = (PartOneQuestion) dao.get(PartOneQuestion.class, id2);
		String seq1 = obj1.getSeq();
		String seq2 = obj2.getSeq();
		obj1.setSeq(seq2);
		obj2.setSeq(seq1);
		dao.update(obj1);
		dao.update(obj2);
		return 1;
	}

}