package me.icoral.app.db.dao;

import java.util.Iterator;

import me.icoral.app.db.entity.Resource;
import me.icoral.core.db.dao.HibernateDao;
import net.sf.json.JSONObject;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ResourceDao extends HibernateDao {

	@Autowired
	public ResourceDao(SessionFactory sessionFactory) {
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
					if (key.equals("title")) {
						criteria.add(Restrictions.like("title", (String) value, MatchMode.ANYWHERE));
					} else {
						criteria.add(Restrictions.eq(key, value));
					}
				}
			}
		}
	}

	public Resource findResourceByType(String type) {
		Criteria criteria = getSession().createCriteria(Resource.class);
		criteria.add(Restrictions.eq("type", type));
		return (Resource) criteria.uniqueResult();
	}

}