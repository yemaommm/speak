package me.icoral.app.servicecall;

import me.icoral.app.query.form.ExamPointQueryForm;
import me.icoral.app.service.IExamPointService;
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
public class ExamPointServiceCall extends BaseWebServiceCallController {

	@Autowired
	IExamPointService service;

	@RequestMapping(value = "/services/examPoint/list", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listExamPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") ExamPointQueryForm queryForm) {
		return listExamPoint(ref, data, queryForm, 1);
	}

	@RequestMapping(value = "/services/examPoint/list/{currentPage}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listExamPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") ExamPointQueryForm queryForm, @PathVariable("currentPage") int currentPage) {
		ServiceCall serviceCall = new ServiceCall(ref, data);

		JSONObject jsonData = JSONObject.fromObject(data);
		jsonData.put("$criteria", JSONObject.fromObject(queryForm));

		if (currentPage != 0) {
			jsonData.put("$page", JSONObject.fromObject("{current:" + currentPage + "}"));
			Page page = service.countExamPoint(jsonData);
			serviceCall.setPage(page);
		}

		Object retVal = service.listExamPoint(jsonData);
		serviceCall.setData(retVal);

		serviceCall.setMessage("success");
		return serviceCall;
	}

	@RequestMapping(value = "/services/examPoint/create", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createExamPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createExamPoint(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/examPoint/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updateExamPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updateExamPoint(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/examPoint/delete/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall deleteExamPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.deleteExamPoint(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/examPoint/find/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findExamPoint(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findExamPoint(id);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}