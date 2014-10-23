package me.icoral.app.servicecall;

import me.icoral.app.service.IUserService;
import me.icoral.core.controller.BaseWebServiceCallController;
import me.icoral.core.service.ServiceCall;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserServiceCall extends BaseWebServiceCallController {

	@Autowired
	IUserService service;

	// 修改密码
	@RequestMapping(value = "/services/user/changepassword", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall changePassword(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.changePassword(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	// 通过username或nickname找用户
	@RequestMapping(value = "/services/user/findName", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findUserByName(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findUserByName(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	// 注册用户
	@RequestMapping(value = "/services/user/create", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createUser(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createUser(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	// 找回密码
	@RequestMapping(value = "/services/user/sendpasswordmail", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall sendPasswordMail(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.sendPasswordMail(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	// 查找用户
	@RequestMapping(value = "/services/user/find/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findUser(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findUserById(id);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	// 更新用户
	@RequestMapping(value = "/services/user/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updateUser(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updateUser(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}