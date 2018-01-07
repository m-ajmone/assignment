package it.assignment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import it.assignment.model.User;
import it.assignment.service.UserService;
import it.assignment.service.UserValidator;

@Controller
public class RegistrationController {
	
	@Autowired
	UserService userService;
	@Autowired
	UserValidator userValidator;
	
	@RequestMapping(value="/registration", method = RequestMethod.GET)
	public ModelAndView registration() {
		ModelAndView model = new ModelAndView("registration");
		model.addObject("user", new User());
		return model;
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("user") User user, BindingResult bindingResult) {
		userValidator.validate(user, bindingResult);
		if(bindingResult.hasErrors()) {
			return("registration");
		}
		userService.save(user);
		
		return("redirect:/registrated");
	}
	
	@RequestMapping(value = "/registrated", method = RequestMethod.GET) 
	public ModelAndView hello() {
		List<User> users = userService.findAll();
		ModelAndView model = new ModelAndView("registrated");
		model.addObject("userList", users);
		return model;
	}
}
