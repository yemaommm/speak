package me.icoral.app.controller;

import me.icoral.app.service.ISeoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebController {

	@Autowired
	ISeoService seoService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("seo", seoService.findSeoByType("home"));
		mav.setViewName("/web/home");
		return mav;
	}

}