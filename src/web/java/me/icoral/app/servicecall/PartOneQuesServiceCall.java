package me.icoral.app.servicecall;

import me.icoral.app.query.form.PartOneQuestionQueryForm;
import me.icoral.app.service.IPartOneQuesService;
import me.icoral.base.Page;
import me.icoral.core.controller.BaseWebServiceCallController;
import me.icoral.core.service.ServiceCall;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PartOneQuesServiceCall extends BaseWebServiceCallController {

	@Autowired
	IPartOneQuesService service;

	@RequestMapping(value = "/services/partOneQuestion/list", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") PartOneQuestionQueryForm queryForm) {
		return listPartOneQuestion(ref, data, queryForm, 1);
	}

	@RequestMapping(value = "/services/partOneQuestion/list/{currentPage}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") PartOneQuestionQueryForm queryForm, @PathVariable("currentPage") int currentPage) {
		ServiceCall serviceCall = new ServiceCall(ref, data);

		JSONObject jsonData = JSONObject.fromObject(data);
		jsonData.put("$criteria", JSONObject.fromObject(queryForm));
		jsonData.put("$sort", JSONObject.fromObject("{seq:1}"));

		if (currentPage != 0) {
			jsonData.put("$page", JSONObject.fromObject("{current:" + currentPage + "}"));
			Page page = service.countPartOneQuestion(jsonData);
			serviceCall.setPage(page);
		}

		Object retVal = service.listPartOneQuestion(jsonData);
		serviceCall.setData(retVal);

		serviceCall.setMessage("success");
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOneQuestion/create", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createPartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createPartOneQuestion(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOneQuestion/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updatePartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updatePartOneQuestion(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOneQuestion/delete/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall deletePartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.deletePartOneQuestion(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOneQuestion/find/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findPartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findPartOneQuestion(id);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOneQuestion/change", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall changePartOneQuestion(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.changePartOneQuestion(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}