package me.icoral.core.service.impl;

import me.icoral.core.db.dao.BaseDao;
import me.icoral.core.db.entity.LoginInfo;
import me.icoral.core.db.entity.User;
import me.icoral.core.service.ISecurityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("securityService")
public class SecurityServiceImpl implements ISecurityService {

	@Autowired
	private BaseDao dao;

	@Override
	public User findUserByUsername(String username) {
		return dao.findUserByUsername(username);
	}

	@Override
	public User findUserByNickname(String nickname) {
		return dao.findUserByNickname(nickname);
	}

	@Override
	public void createaLoginInfo(LoginInfo info) {
		dao.save(info);
	}

}