package me.icoral.app.db.dao;

import java.util.Iterator;

import me.icoral.core.db.dao.HibernateDao;
import me.icoral.core.db.entity.User;
import net.sf.json.JSONObject;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao extends HibernateDao {

	@Autowired
	public UserDao(SessionFactory sessionFactory) {
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
					if (key.equals("username") || key.equals("nickname")) {
						criteria.add(Restrictions.like(key, (String) value, MatchMode.ANYWHERE));
					} else {
						criteria.add(Restrictions.eq(key, value));
					}
				}
			}
		}
	}

	public User findUserByUsername(String key, Object value) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq(key, value));
		return (User) criteria.uniqueResult();
	}

}