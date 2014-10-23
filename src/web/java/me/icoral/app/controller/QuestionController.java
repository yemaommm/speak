package me.icoral.app.controller;

import me.icoral.app.db.entity.Question;
import me.icoral.app.query.form.QuestionQueryForm;
import me.icoral.app.service.IQuestionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QuestionController {

	@Autowired
	IQuestionService service;

	@RequestMapping(value = "/admin/question/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/question/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/question/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage, @ModelAttribute("queryForm") QuestionQueryForm queryForm) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", currentPage);
		mav.addObject("queryForm", queryForm);
		mav.setViewName("/admin/question/list");
		return mav;
	}

	@RequestMapping(value = "/admin/question/create", method = RequestMethod.GET)
	public ModelAndView create(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/question/create");
		return mav;
	}

	@RequestMapping(value = "/admin/question/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		Question question = service.findQuestion(id);
		mav.addObject("question", question);
		mav.setViewName("/admin/question/update");
		return mav;
	}

}