package me.icoral.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import me.icoral.app.service.ISeoService;
import me.icoral.app.service.IUserService;
import me.icoral.core.db.entity.AbstractPo;
import me.icoral.web.security.Passport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebPracticeController {

	@Autowired
	IUserService service;

	@Autowired
	ISeoService seoService;

	@RequestMapping(value = "/practice", method = RequestMethod.GET)
	public ModelAndView practice(ModelMap model) {
		ModelAndView mav = new ModelAndView();

		Passport passport = (Passport) AbstractPo.getPassport();
		mav.addObject("user", service.findUserById(passport.getId()));

		mav.addObject("seo", seoService.findSeoByType("practice"));
		mav.setViewName("/web/practice/practice");
		return mav;
	}

	@RequestMapping(value = "/self", method = RequestMethod.GET)
	public ModelAndView practiceSelf(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/web/practice/self");
		return mav;
	}

	@RequestMapping(value = "/self/{sn}", method = RequestMethod.GET)
	public ModelAndView practiceSelf(ModelMap model, @PathVariable("sn") String sn, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession(true);
		if (session.getAttribute(sn) == null) {
			mav.setViewName("/web/practice/self");
			return mav;
		}

		mav.addObject("sn", sn);
		mav.setViewName("/web/practice/selfDetail");
		return mav;
	}

	@RequestMapping(value = "/selfDone/{sn}", method = RequestMethod.GET)
	public ModelAndView practiceSelfDone(ModelMap model, @PathVariable("sn") String sn, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession(true);
		if (session.getAttribute(sn) == null) {
			mav.setViewName("/web/practice/self");
			return mav;
		}

		mav.addObject("sn", sn);
		mav.setViewName("/web/practice/selfDone");
		return mav;
	}

	@RequestMapping(value = "/point", method = RequestMethod.GET)
	public ModelAndView practicePoint(ModelMap model) {
		ModelAndView mav = new ModelAndView();

		Passport passport = (Passport) AbstractPo.getPassport();
		mav.addObject("user", service.findUserById(passport.getId()));

		mav.setViewName("/web/practice/point");
		return mav;
	}

	@RequestMapping(value = "/point/{sn}", method = RequestMethod.GET)
	public ModelAndView practicePoint(ModelMap model, @PathVariable("sn") String sn, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession(true);
		if (session.getAttribute(sn) == null) {
			mav.setViewName("/web/practice/point");
			return mav;
		}

		Passport passport = (Passport) AbstractPo.getPassport();
		mav.addObject("user", service.findUserById(passport.getId()));

		mav.addObject("sn", sn);
		mav.setViewName("/web/practice/pointDetail");
		return mav;
	}

	@RequestMapping(value = "/exam", method = RequestMethod.GET)
	public ModelAndView practiceExam(ModelMap model) {
		ModelAndView mav = new ModelAndView();

		Passport passport = (Passport) AbstractPo.getPassport();
		mav.addObject("user", service.findUserById(passport.getId()));

		mav.setViewName("/web/practice/exam");
		return mav;
	}

	@RequestMapping(value = "/exam/{sn}", method = RequestMethod.GET)
	public ModelAndView practiceExam(ModelMap model, @PathVariable("sn") String sn, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession(true);
		if (session.getAttribute(sn) == null) {
			mav.setViewName("/web/practice/exam");
			return mav;
		}

		Passport passport = (Passport) AbstractPo.getPassport();
		mav.addObject("user", service.findUserById(passport.getId()));

		mav.addObject("sn", sn);
		mav.setViewName("/web/practice/examDetail");
		return mav;
	}

}