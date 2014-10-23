package me.icoral.app.controller;

import me.icoral.app.db.entity.Resource;
import me.icoral.app.query.form.ResourceQueryForm;
import me.icoral.app.service.IResourceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ResourceController {

	@Autowired
	IResourceService service;

	@RequestMapping(value = "/admin/resource/list", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/resource/list/1");
		return mav;
	}

	@RequestMapping(value = "/admin/resource/list/{currentPage}", method = RequestMethod.GET)
	public ModelAndView list(ModelMap model, @PathVariable("currentPage") int currentPage, @ModelAttribute("queryForm") ResourceQueryForm queryForm) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("currentPage", currentPage);
		mav.addObject("queryForm", queryForm);
		mav.setViewName("/admin/resource/list");
		return mav;
	}

	@RequestMapping(value = "/admin/resource/create", method = RequestMethod.GET)
	public ModelAndView create(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/resource/create");
		return mav;
	}

	@RequestMapping(value = "/admin/resource/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(ModelMap model, @PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		Resource resource = service.findResource(id);
		mav.addObject("resource", resource);
		mav.setViewName("/admin/resource/update");
		return mav;
	}

}