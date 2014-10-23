package me.icoral.app.db.dao;

import java.util.Iterator;

import me.icoral.core.db.dao.HibernateDao;
import net.sf.json.JSONObject;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ExamPointDao extends HibernateDao {

	@Autowired
	public ExamPointDao(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@SuppressWarnings("unchecked")
	protected void addRestrictions(Criteria criteria, JSONObject q) {
		if (q.containsKey("$criteria")) {
			JSONObject cs = q.getJSONObject("$criteria");
			Iterator<String> it = cs.keySet().iterator();
			while (it.hasNext()) {
				String key = it.next();
				Object value = cs.get(key);
				if (!value.equals("")) {
					if (key.equals("examPoint")) {
						criteria.add(Restrictions.like("examPoint", (String) value, MatchMode.ANYWHERE));
					} else if (key.equals("cityId")) {
						criteria.add(Restrictions.eq(key, Integer.valueOf((String) value)));
					} else {
						criteria.add(Restrictions.eq(key, value));
					}
				}
			}
		}
	}

}