package me.icoral.app.controller;

import me.icoral.app.db.entity.Question;
import me.icoral.app.service.IQuestionService;
import me.icoral.app.service.ISeoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebCourseController {

	@Autowired
	ISeoService seoService;

	@Autowired
	IQuestionService quesService;

	@RequestMapping(value = "/course", method = RequestMethod.GET)
	public ModelAndView course(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("seo", seoService.findSeoByType("course"));
		mav.setViewName("/web/course");
		return mav;
	}

	@RequestMapping(value = "/course/{mp4upid}", method = RequestMethod.GET)
	public ModelAndView courseOne(ModelMap model, @PathVariable("mp4upid") String mp4upid) {
		ModelAndView mav = new ModelAndView();

		Question question = quesService.findQuestionByMp4(mp4upid);
		if (question == null) {
			mav.setViewName("redirect:/web/course");
			return mav;
		} else {
			mav.addObject("question", question);
		}

		mav.addObject("seo", seoService.findSeoByType("course"));
		mav.setViewName("/web/courseOne");
		return mav;
	}

}