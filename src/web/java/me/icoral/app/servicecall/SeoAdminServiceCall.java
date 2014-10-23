package me.icoral.app.servicecall;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import me.icoral.app.service.ISeoService;
import me.icoral.base.Page;
import me.icoral.core.controller.BaseWebServiceCallController;
import me.icoral.core.service.ServiceCall;
import net.sf.json.JSONObject;

@Controller
public class SeoAdminServiceCall extends BaseWebServiceCallController {

	@Autowired
	ISeoService service;

	@RequestMapping(value = "/services/seo/list", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listSeo(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		return listSeo(ref, data, 1);
	}

	@RequestMapping(value = "/services/seo/list/{currentPage}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall listSeo(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("currentPage") int currentPage) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		JSONObject jsonData = JSONObject.fromObject(data);

		if (currentPage != 0) {
			jsonData.put("$page", JSONObject.fromObject("{current:" + currentPage + "}"));
			Page page = service.countSeo(jsonData);
			serviceCall.setPage(page);
		}

		Object retVal = service.listSeo(jsonData);
		serviceCall.setData(retVal);

		serviceCall.setMessage("success");
		return serviceCall;
	}

	@RequestMapping(value = "/services/seo/update/{id}", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall updateSeo(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data, @PathVariable("id") int id) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.updateSeo(id, JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}