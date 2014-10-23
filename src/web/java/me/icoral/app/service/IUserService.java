package me.icoral.app.service;

import java.util.List;

import me.icoral.core.db.entity.User;
import me.icoral.base.Page;
import net.sf.json.JSONObject;

public interface IUserService {

	public Integer changePassword(JSONObject json);

	public String sendPasswordMail(JSONObject json);

	public Page countUser(JSONObject json);

	@SuppressWarnings("rawtypes")
	public List listUser(JSONObject json);

	public User createUser(JSONObject json) throws Exception;

	public User updateUser(int id, JSONObject json) throws Exception;

	public int deleteUser(int id, JSONObject json) throws Exception;

	public User findUserById(int id);

	public User findUserByName(JSONObject json);

}