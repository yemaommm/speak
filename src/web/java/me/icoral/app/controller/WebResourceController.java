package me.icoral.app.controller;

import java.util.List;

import me.icoral.app.db.entity.*;
import me.icoral.app.service.*;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebResourceController {

	@Autowired
	IResourceService resourceService;

	@Autowired
	ISeoService seoService;

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public ModelAndView aboutus(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		Resource resource = resourceService.findResource("aboutus");
		mav.addObject("resource", resource);

		JSONObject json = new JSONObject();
		json.put("$sort", JSONObject.fromObject("{seq:1}"));
		List list = resourceService.listResource(json);
		mav.addObject("resourceList", list);

		mav.addObject("seo", seoService.findSeoByType("about"));
		mav.setViewName("/web/about");
		return mav;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		Resource resource = resourceService.findResource("contact");
		mav.addObject("resource", resource);

		JSONObject json = new JSONObject();
		json.put("$sort", JSONObject.fromObject("{seq:1}"));
		List list = resourceService.listResource(json);
		mav.addObject("resourceList", list);

		mav.addObject("seo", seoService.findSeoByType("about"));
		mav.setViewName("/web/about");
		return mav;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public ModelAndView faq(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		Resource resource = resourceService.findResource("faq");
		mav.addObject("resource", resource);

		JSONObject json = new JSONObject();
		json.put("$sort", JSONObject.fromObject("{seq:1}"));
		List list = resourceService.listResource(json);
		mav.addObject("resourceList", list);

		mav.addObject("seo", seoService.findSeoByType("about"));
		mav.setViewName("/web/about");
		return mav;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public ModelAndView join(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		Resource resource = resourceService.findResource("join");
		mav.addObject("resource", resource);

		JSONObject json = new JSONObject();
		json.put("$sort", JSONObject.fromObject("{seq:1}"));
		List list = resourceService.listResource(json);
		mav.addObject("resourceList", list);

		mav.addObject("seo", seoService.findSeoByType("about"));
		mav.setViewName("/web/about");
		return mav;
	}

}