package me.icoral.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "/login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "/register";
	}

	@RequestMapping(value = "/getpassword", method = RequestMethod.GET)
	public String getPassword() {
		return "/getpassword";
	}

}