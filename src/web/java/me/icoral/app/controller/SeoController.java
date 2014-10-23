package me.icoral.app.controller;

import me.icoral.app.db.entity.Seo;
import me.icoral.app.service.ISeoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SeoController {

	@Autowired
	ISeoService service;

	@RequestMapping(value = "/admin/seo/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/seo/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/seo/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", Integer.valueOf(currentPage));
		mav.setViewName("/admin/seo/list");
		return mav;
	}

	@RequestMapping(value = "/admin/seo/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		Seo seo = service.findSeo(id);
		mav.addObject("seo", seo);
		mav.setViewName("/admin/seo/update");
		return mav;
	}

}