package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.QuestionDao;
import me.icoral.app.db.entity.Question;
import me.icoral.app.service.IQuestionService;
import me.icoral.base.Constants;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionServiceImpl implements IQuestionService {

	@Autowired
	private QuestionDao dao;

	@Override
	public Page countQuestion(JSONObject json) {
		long count = dao.count(Question.class, json);
		int size = Constants.PAGESIZE_DEFAULT;
		Page page = new Page(count, size);
		return page;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listQuestion(JSONObject json) {
		return dao.list(Question.class, json);
	}

	@Override
	public Question createQuestion(JSONObject json) throws Exception {
		Question question = new Question();
		BaseUtils.convert(json, question);
		dao.save(question);

		question.setSeq(question.getId().toString());
		dao.update(question);

		return question;
	}

	@Override
	public Question updateQuestion(int id, JSONObject json) throws Exception {
		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		Question question = (Question) dao.get(Question.class, id);
		BaseUtils.convert(json, question);
		dao.update(question);
		return question;
	}

	@Override
	public int deleteQuestion(int id, JSONObject json) throws Exception {
		Question question = (Question) dao.get(Question.class, id);
		dao.delete(question);
		return id;
	}

	@Override
	public Question findQuestion(int id) {
		return (Question) dao.get(Question.class, id);
	}

	@Override
	public Question findQuestionByMp4(String mp4upid) {
		return dao.findQuestionByName(mp4upid);
	}

	@Override
	public int changeQuestion(JSONObject json) throws Exception {
		Integer id1 = json.getInt("id1");
		Integer id2 = json.getInt("id2");
		Question obj1 = (Question) dao.get(Question.class, id1);
		Question obj2 = (Question) dao.get(Question.class, id2);
		String seq1 = obj1.getSeq();
		String seq2 = obj2.getSeq();
		obj1.setSeq(seq2);
		obj2.setSeq(seq1);
		dao.update(obj1);
		dao.update(obj2);
		return 1;
	}

}