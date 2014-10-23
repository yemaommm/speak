package me.icoral.app.controller;

import me.icoral.app.db.entity.ExamTime;
import me.icoral.app.query.form.ExamTimeQueryForm;
import me.icoral.app.service.IExamTimeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExamTimeController {

	@Autowired
	IExamTimeService service;

	@RequestMapping(value = "/admin/examTime/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/examTime/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/examTime/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage, @ModelAttribute("queryForm") ExamTimeQueryForm queryForm) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", currentPage);
		mav.addObject("queryForm", queryForm);
		mav.setViewName("/admin/examTime/list");
		return mav;
	}

	@RequestMapping(value = "/admin/examTime/create", method = RequestMethod.GET)
	public ModelAndView create(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/examTime/create");
		return mav;
	}

	@RequestMapping(value = "/admin/examTime/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		ExamTime examTime = service.findExamTime(id);
		mav.addObject("examTime", examTime);
		mav.setViewName("/admin/examTime/update");
		return mav;
	}

}