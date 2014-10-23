package me.icoral.app.servicecall;

import me.icoral.app.query.form.RecordTopicQueryForm;
import me.icoral.app.service.IRecordTopicService;
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
public class RecordTopicServiceCall extends BaseWebServiceCallController {

	@Autowired
	IRecordTopicService service;

	@RequestMapping(value = "/services/recordTopic/list", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listRecordTopic(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") RecordTopicQueryForm queryForm) {
		return listRecordTopic(ref, data, queryForm, 1);
	}

	@RequestMapping(value = "/services/recordTopic/list/{currentPage}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listRecordTopic(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") RecordTopicQueryForm queryForm, @PathVariable("currentPage") int currentPage) {
		ServiceCall serviceCall = new ServiceCall(ref, data);

		JSONObject jsonData = JSONObject.fromObject(data);
		jsonData.put("$criteria", JSONObject.fromObject(queryForm));
		jsonData.put("$sort", JSONObject.fromObject("{id:2}"));

		if (currentPage != 0) {
			jsonData.put("$page", JSONObject.fromObject("{current:" + currentPage + "}"));
			Page page = service.countRecordTopic(jsonData);
			serviceCall.setPage(page);
		}

		Object retVal = service.listRecordTopic(jsonData);
		serviceCall.setData(retVal);

		serviceCall.setMessage("success");
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordTopic/create", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createRecordTopic(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createRecordTopic(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordTopic/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updateRecordTopic(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updateRecordTopic(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordTopic/delete/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall deleteRecordTopic(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.deleteRecordTopic(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordTopic/find/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findRecordTopic(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findRecordTopic(id);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}