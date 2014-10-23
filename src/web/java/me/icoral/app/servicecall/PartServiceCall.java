package me.icoral.app.servicecall;

import javax.servlet.http.HttpServletRequest;

import me.icoral.app.service.IPartService;
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
public class PartServiceCall extends BaseWebServiceCallController {

	@Autowired
	IPartService service;

	@RequestMapping(value = "/services/part/createself", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createPartSelf(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, HttpServletRequest request) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createPartSelf(JSONObject.fromObject(data), request);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/part/createpoint", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createPartPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, HttpServletRequest request) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createPartPoint(JSONObject.fromObject(data), request);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/part/createexam", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createPartExam(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, HttpServletRequest request) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createPartExam(JSONObject.fromObject(data), request);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/part/listself/{sn}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartSelf(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("sn") String sn, HttpServletRequest request) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.listPartSelf(sn, request);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/part/listpoint/{sn}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("sn") String sn, HttpServletRequest request) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.listPartPoint(sn, request);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/part/listexam/{sn}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartExam(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("sn") String sn, HttpServletRequest request) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.listPartExam(sn, request);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}