package me.icoral.core.service;

import me.icoral.core.db.entity.LoginInfo;
import me.icoral.core.db.entity.User;

public interface ISecurityService {

	public User findUserByUsername(String username);

	public User findUserByNickname(String nickname);

	public void createaLoginInfo(LoginInfo info);

}