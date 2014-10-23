package me.icoral.core.db.dao;

import me.icoral.core.db.entity.User;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

public class BaseDao extends HibernateDao {

	public User findUserByUsername(String username) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("username", username));
		return (User) criteria.uniqueResult();
	}

	public User findUserByNickname(String nickname) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("nickname", nickname));
		return (User) criteria.uniqueResult();
	}

}