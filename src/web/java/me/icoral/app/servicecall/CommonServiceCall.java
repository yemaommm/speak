package me.icoral.app.servicecall;

import me.icoral.app.service.ICommonService;
import me.icoral.core.controller.BaseWebServiceCallController;
import me.icoral.core.service.ServiceCall;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommonServiceCall extends BaseWebServiceCallController {

	@Autowired
	ICommonService service;

	@RequestMapping(value = "/services/common/unzip", method = RequestMethod.POST)
	public @ResponseBody
	ServiceCall unZip(@RequestParam(value = "ref", required = false, defaultValue = "{}") String ref, @RequestParam(value = "data", required = false, defaultValue = "{}") String data) {
		ServiceCall serviceCall = new ServiceCall(ref, data);
		try {
			Object retVal = service.unZipIMG(JSONObject.fromObject(data));
			serviceCall.setMessage("success");
			serviceCall.setData(retVal);
		} catch (Exception e) {
			serviceCall.setMessage("error");
		}
		return serviceCall;
	}

}