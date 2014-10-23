package me.icoral.app.controller;

import me.icoral.app.db.entity.PartTwo;
import me.icoral.app.query.form.PartTwoQueryForm;
import me.icoral.app.service.IPartTwoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PartTwoController {

	@Autowired
	IPartTwoService service;

	@RequestMapping(value = "/admin/partTwo/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/partTwo/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/partTwo/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage, @ModelAttribute("queryForm") PartTwoQueryForm queryForm) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", currentPage);
		mav.addObject("queryForm", queryForm);
		mav.setViewName("/admin/partTwo/list");
		return mav;
	}

	@RequestMapping(value = "/admin/partTwo/create", method = RequestMethod.GET)
	public ModelAndView create(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/partTwo/create");
		return mav;
	}

	@RequestMapping(value = "/admin/partTwo/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		PartTwo partTwo = service.findPartTwo(id);
		mav.addObject("partTwo", partTwo);
		mav.setViewName("/admin/partTwo/update");
		return mav;
	}

}