package it.assignment.controller;

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
@RequestMapping("/registration")
public class RegistrationController {
	
	@Autowired
	UserService userService;
	@Autowired
	UserValidator userValidator;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView registration() {
		ModelAndView model = new ModelAndView("registration");
		model.addObject("user", new User());
		return model;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String registration(@ModelAttribute("user") User user, BindingResult bindingResult) {
		userValidator.validate(user, bindingResult);
		if(bindingResult.hasErrors()) {
			return("registration");
		}
		userService.save(user);
		
		return("redirect:/index");
	}

}
