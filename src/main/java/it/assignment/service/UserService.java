package it.assignment.service;

import java.util.List;

import it.assignment.model.User;

public interface UserService {
	
	public User findByUsername(String username);
	
	public void save(User user);

	public List<User> findAll();
}
