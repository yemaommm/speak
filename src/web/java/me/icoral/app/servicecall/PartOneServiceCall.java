package me.icoral.app.servicecall;

import me.icoral.app.query.form.PartOneQueryForm;
import me.icoral.app.service.IPartOneService;
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
public class PartOneServiceCall extends BaseWebServiceCallController {

	@Autowired
	IPartOneService service;

	@RequestMapping(value = "/services/partOne/list", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") PartOneQueryForm queryForm) {
		return listPartOne(ref, data, queryForm, 1);
	}

	@RequestMapping(value = "/services/partOne/list/{currentPage}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listPartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @ModelAttribute("queryForm") PartOneQueryForm queryForm, @PathVariable("currentPage") int currentPage) {
		ServiceCall serviceCall = new ServiceCall(ref, data);

		JSONObject jsonData = JSONObject.fromObject(data);
		jsonData.put("$criteria", JSONObject.fromObject(queryForm));
		jsonData.put("$sort", JSONObject.fromObject("{seq:1}"));

		if (currentPage != 0) {
			jsonData.put("$page", JSONObject.fromObject("{current:" + currentPage + "}"));
			Page page = service.countPartOne(jsonData);
			serviceCall.setPage(page);
		}

		Object retVal = service.listPartOne(jsonData);
		serviceCall.setData(retVal);

		serviceCall.setMessage("success");
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOne/create", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall createPartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.createPartOne(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOne/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updatePartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updatePartOne(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOne/delete/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall deletePartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.deletePartOne(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOne/find/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall findPartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.findPartOne(id);
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

	@RequestMapping(value = "/services/partOne/change", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall changePartOne(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.changePartOne(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}