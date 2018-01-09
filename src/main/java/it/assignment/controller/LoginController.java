package it.assignment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(String error, String logout) {
		ModelAndView model = new ModelAndView("login");
		if(error != null)
			model.addObject("error", "Invalid username or password");
		if(logout != null) 
			model.addObject("logout", "You have been successfully logged out");
		return model;
	}
	
	@RequestMapping(value = {"/hello","/"}, method = RequestMethod.GET)
	public String hello() {
		return ("hello");
	}
}
