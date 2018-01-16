package it.assignment.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import it.assignment.model.User;
import it.assignment.service.UserService;

@Controller
public class AdminController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/userlist",method=RequestMethod.GET)
	public ModelAndView userList() {
		ModelAndView model = new ModelAndView("userlist");
		List<User> userList = userService.findAll();
		model.addObject("userList", userList);
		return model;
	}
	@RequestMapping(value="/403", method=RequestMethod.GET) 
	public ModelAndView accessDenied() {
		ModelAndView model = new ModelAndView("403");
		model.addObject("message", "You must be logged in as an admin to access this page!");
		return model;
	}
}
