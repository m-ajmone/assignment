package it.assignment.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import it.assignment.model.User;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(String error, String logout) {
		ModelAndView model = new ModelAndView("login");
	
		
		if(error != null)
			model.addObject("error", "Invalid username or password");
		if(logout != null) 
			model.addObject("logout", "You have been successfully logged out");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (!(auth instanceof AnonymousAuthenticationToken)) {
		    return new ModelAndView("forward:/");
		}
		return model;
	}
}
