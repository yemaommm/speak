package me.icoral.app.controller;

import me.icoral.app.db.entity.PartOne;
import me.icoral.app.query.form.PartOneQueryForm;
import me.icoral.app.service.IPartOneService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PartOneController {

	@Autowired
	IPartOneService service;

	@RequestMapping(value = "/admin/partOne/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/partOne/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/partOne/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage, @ModelAttribute("queryForm") PartOneQueryForm queryForm) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", currentPage);
		mav.addObject("queryForm", queryForm);
		mav.setViewName("/admin/partOne/list");
		return mav;
	}

	@RequestMapping(value = "/admin/partOne/create", method = RequestMethod.GET)
	public ModelAndView create(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/partOne/create");
		return mav;
	}

	@RequestMapping(value = "/admin/partOne/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		PartOne partOne = service.findPartOne(id);
		mav.addObject("partOne", partOne);
		mav.setViewName("/admin/partOne/update");
		return mav;
	}

}