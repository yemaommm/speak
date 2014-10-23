package me.icoral.app.servicecall;

import me.icoral.app.query.form.RecordHistoryQueryForm;
import me.icoral.app.service.IRecordHistoryService;
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
public class RecordHistoryServiceCall extends BaseWebServiceCallController {

	@Autowired
	IRecordHistoryService service;

	@RequestMapping(value = "/services/recordHistory/list", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listRecordHistory(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") RecordHistoryQueryForm queryForm) {
		return listRecordHistory(ref, data, queryForm, 1);
	}

	@RequestMapping(value = "/services/recordHistory/list/{currentPage}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listRecordHistory(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") RecordHistoryQueryForm queryForm, @PathVariable("currentPage") int currentPage) {
		ServiceCall serviceCall = new ServiceCall(ref, data);

		JSONObject jsonData = JSONObject.fromObject(data);

		JSONObject query = JSONObject.fromObject(queryForm);
		if (jsonData.containsKey("status")) {
			query.put("status", jsonData.getInt("status"));
		}

		jsonData.put("$criteria", query);
		jsonData.put("$sort", JSONObject.fromObject("{id:2}"));

		if (currentPage != 0) {
			jsonData.put("$page", JSONObject.fromObject("{current:" + currentPage + "}"));
			Page page = service.countRecordHistory(jsonData);
			serviceCall.setPage(page);
		}

		Object retVal = service.listRecordHistory(jsonData);
		serviceCall.setData(retVal);

		serviceCall.setMessage("success");
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordHistory/create", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createRecordHistory(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createRecordHistory(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordHistory/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updateRecordHistory(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updateRecordHistory(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordHistoryS/update/{ids}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updateRecordHistoryS(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("ids") String ids) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updateRecordHistoryS(ids);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordHistory/delete/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall deleteRecordHistory(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.deleteRecordHistory(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/recordHistory/find/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findRecordHistory(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findRecordHistory(id);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}