package me.icoral.app.db.dao;

import me.icoral.app.db.entity.Seo;
import me.icoral.core.db.dao.HibernateDao;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SeoDao extends HibernateDao {

	@Autowired
	public SeoDao(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	public Seo findSeoByName(String type) {
		Criteria criteria = getSession().createCriteria(Seo.class);
		criteria.add(Restrictions.eq("type", type));
		return (Seo) criteria.uniqueResult();
	}

}