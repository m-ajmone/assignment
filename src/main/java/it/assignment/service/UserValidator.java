package it.assignment.service;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import it.assignment.model.User;

@Component
public class UserValidator implements Validator {
	
	@Autowired
	UserService userService;

	@Override
	public void validate(Object userObject, Errors errors) {
		User user = (User)userObject;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "Empty");
		if (user.getUsername().length() < 6 || user.getUsername().length() > 16) {
            errors.rejectValue("username", "UsernameLength");
        }
		
		if (userService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "DuplicateUser");
        }
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "Empty");
		if (user.getPassword().length() < 6 || user.getPassword().length() > 16) {
            errors.rejectValue("password", "PasswordLength");
        }
		
		if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "DifferentPasswordConfirm");
        }
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "Empty");
		
		String emailregex = "^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$";
		if(!(Pattern.matches(emailregex, user.getEmail()))) {
			errors.rejectValue("email", "InvalidEmail");
		}	
		
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
