package me.icoral.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView home(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/partOne/list/1");
		return mav;
	}

}