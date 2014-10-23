package me.icoral.app.service.impl;

import java.util.List;

import me.icoral.app.db.dao.UserDao;
import me.icoral.app.service.IUserService;
import me.icoral.base.Page;
import me.icoral.base.util.BaseUtils;
import me.icoral.base.util.FreeMarkerUtils;
import me.icoral.base.util.ServerConfig;
import me.icoral.core.db.entity.AbstractPo;
import me.icoral.core.db.entity.Role;
import me.icoral.core.db.entity.User;
import me.icoral.core.message.mail.Mail;
import me.icoral.core.message.mail.Sendmail;
import me.icoral.core.message.mail.Smtp;
import me.icoral.web.security.Passport;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserDao dao;

	@Override
	public Integer changePassword(JSONObject json) {
		Passport passport = AbstractPo.getPassport();
		User user = (User) dao.get(User.class, passport.getId());
		if (user == null) {
			return null;
		}

		String pre_password = json.getString("pre_password");
		if (!user.getPassword().equals(BaseUtils.md5(pre_password))) {
			return 0;
		}

		String new_password = json.getString("new_password");
		user.setPassword(BaseUtils.md5(new_password));
		dao.update(user);
		return 1;
	}

	@Override
	public String sendPasswordMail(JSONObject json) {
		String result = "";

		String username = json.getString("username").trim();
		User user = (User) dao.findUserByUsername("username", username);
		if (user == null) {
			return null;
		}

		Smtp smtp = new Smtp();
		smtp.host = ServerConfig.getProperty("smtp.host");
		smtp.username = ServerConfig.getProperty("smtp.username");
		smtp.password = ServerConfig.getProperty("smtp.password");

		Mail mail = new Mail();
		mail.from = ServerConfig.getProperty("smtp.username");
		mail.screenname = ServerConfig.getProperty("mail.resetPassword.screenname");
		mail.to = user.getUsername();
		mail.subject = ServerConfig.getProperty("mail.resetPassword.subject");

		JSONObject data = new JSONObject();
		String passwd = BaseUtils.generateRandomCode(8);
		user.setPassword(BaseUtils.md5(passwd));
		dao.update(user);
		data.put("passwd", passwd);
		mail.content = FreeMarkerUtils.process("sendPasswordMailTemplate.ftl", data);
		try {
			Sendmail.send(smtp, mail);
			result = "success";
		} catch (Exception e) {
			result = "error";
		}

		return result;
	}

	@Override
	public Page countUser(JSONObject json) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List listUser(JSONObject json) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User createUser(JSONObject json) throws Exception {
		String username = json.getString("username");
		if (dao.findUserByUsername("username", username) != null) {
			return null;
		}

		String nickname = json.getString("nickname");
		if (dao.findUserByUsername("nickname", nickname) != null) {
			return null;
		}

		User user = new User();
		BaseUtils.convert(json, user);

		user.setPassword(BaseUtils.md5(user.getPassword()));// md5加密

		Role role = (Role) dao.get(Role.class, 1);
		user.setRole(role);// 分配角色 普通用户
		user.setAccountNonExpired(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setEnabled(true);
		user.setAdmin(false);
		user.setIsFirst(1);
		user.setIsPoint(1);
		user.setIsExam(1);

		dao.save(user);
		return user;
	}

	@Override
	public User updateUser(int id, JSONObject json) throws Exception {
		if (json.containsKey("nickname")) {
			String nickname = json.getString("nickname");
			User user = dao.findUserByUsername("nickname", nickname);
			if (user != null) {
				if (!user.getId().equals(id)) {
					return null;
				}
			}
		}

		json = BaseUtils.filterFields(json, null, new String[] { "id" });
		User user = (User) dao.get(User.class, id);
		BaseUtils.convert(json, user);
		dao.update(user);
		return user;
	}

	@Override
	public int deleteUser(int id, JSONObject json) throws Exception {
		return id;
	}

	@Override
	public User findUserById(int id) {
		return (User) dao.get(User.class, id);
	}

	@Override
	public User findUserByName(JSONObject json) {
		if (json.containsKey("username")) {
			return (User) dao.findUserByUsername("username", json.getString("username"));
		} else if (json.containsKey("nickname")) {
			return (User) dao.findUserByUsername("nickname", json.getString("nickname"));
		} else {
			return null;
		}
	}

}