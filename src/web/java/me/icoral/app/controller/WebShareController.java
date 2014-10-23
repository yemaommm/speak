package me.icoral.app.controller;

import me.icoral.app.service.ISeoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebShareController {

	@Autowired
	ISeoService seoService;

	@RequestMapping(value = "/share", method = RequestMethod.GET)
	public ModelAndView share(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("seo", seoService.findSeoByType("share"));
		mav.setViewName("/web/community");
		return mav;
	}

	@RequestMapping(value = "/share/{query}", method = RequestMethod.GET)
	public ModelAndView shareQuery(ModelMap model, @PathVariable("query") String query) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("query", query);
		mav.addObject("seo", seoService.findSeoByType("share"));
		mav.setViewName("/web/community");
		return mav;
	}

}