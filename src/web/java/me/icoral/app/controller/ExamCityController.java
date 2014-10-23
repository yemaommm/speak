package me.icoral.app.controller;

import me.icoral.app.db.entity.ExamCity;
import me.icoral.app.query.form.ExamCityQueryForm;
import me.icoral.app.service.IExamCityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExamCityController {

	@Autowired
	IExamCityService service;

	@RequestMapping(value = "/admin/examCity/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/examCity/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/examCity/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage, @ModelAttribute("queryForm") ExamCityQueryForm queryForm) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", currentPage);
		mav.addObject("queryForm", queryForm);
		mav.setViewName("/admin/examCity/list");
		return mav;
	}

	@RequestMapping(value = "/admin/examCity/create", method = RequestMethod.GET)
	public ModelAndView create(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/examCity/create");
		return mav;
	}

	@RequestMapping(value = "/admin/examCity/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		ExamCity examCity = service.findExamCity(id);
		mav.addObject("examCity", examCity);
		mav.setViewName("/admin/examCity/update");
		return mav;
	}

}