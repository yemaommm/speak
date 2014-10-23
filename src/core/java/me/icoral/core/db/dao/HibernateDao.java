package me.icoral.core.db.dao;

import java.util.Iterator;
import java.util.List;

import me.icoral.base.Constants;
import me.icoral.core.db.entity.AbstractPo;
import net.sf.json.JSONObject;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class HibernateDao extends HibernateDaoSupport {

	public void save(Object o) {
		if (o instanceof AbstractPo) {
			((AbstractPo) o).setDefaultValue();
		}
		try {
			getHibernateTemplate().save(o);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public void saveOrUpdate(Object o) {
		if (o instanceof AbstractPo) {
			((AbstractPo) o).setDefaultValue();
		}
		getHibernateTemplate().saveOrUpdate(o);
	}

	public void update(Object o) {
		if (o instanceof AbstractPo) {
			((AbstractPo) o).setDefaultValue();
		}
		getHibernateTemplate().update(o);
	}

	public void delete(Object o) {
		getHibernateTemplate().delete(o);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Object get(Class clz, Integer id) {
		return getHibernateTemplate().get(clz, id);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Object get(Class clz, String id) {
		return getHibernateTemplate().get(clz, id);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Object load(Class clz, Integer id) {
		return getHibernateTemplate().load(clz, id);
	}

	@SuppressWarnings("rawtypes")
	public List list(Class clz) {
		Criteria criteria = getSession().createCriteria(clz);
		return criteria.list();
	}

	public Transaction getTransaction() {
		return this.getSession().getTransaction();
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
					criteria.add(Restrictions.eq(key, value));
				}
			}
		}
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	protected Criteria createCriteria(Class clz, JSONObject q) {
		Criteria criteria = getSession().createCriteria(clz);
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		addRestrictions(criteria, q);
		if (q.containsKey("$page")) {
			JSONObject page = q.getJSONObject("$page");
			int current = page.getInt("current");
			int pageSize = Constants.PAGESIZE_DEFAULT;
			criteria.setFirstResult((current - 1) * pageSize);
			criteria.setMaxResults(pageSize);
		}

		if (q.containsKey("$sort")) {
			JSONObject sorts = q.getJSONObject("$sort");
			Iterator<String> it = sorts.keySet().iterator();
			while (it.hasNext()) {
				String key = it.next();
				int sort = sorts.getInt(key);
				if (sort == 1) {
					criteria.addOrder(Order.asc(key));
				} else {
					criteria.addOrder(Order.desc(key));
				}
			}
		}

		return criteria;
	}

	@SuppressWarnings({ "rawtypes" })
	public Long count(Class clz, JSONObject q) {
		Criteria criteria = getSession().createCriteria(clz);
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		addRestrictions(criteria, q);
		criteria.setProjection(Projections.count("id"));
		Long count = (Long) criteria.uniqueResult();
		return count;
	}

	@SuppressWarnings({ "rawtypes" })
	public List list(Class clz, JSONObject q) {
		return this.createCriteria(clz, q).list();
	}

	@SuppressWarnings("rawtypes")
	public List executeSQLQuery(String sql) {
		Session session = getSession();
		Query query = session.createSQLQuery(sql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
		List list = query.list();
		return list;
	}

	public int executeSQLUpdate(String sql) {
		Session session = getSession();
		int update = session.createSQLQuery(sql).executeUpdate();
		return update;
	}

}