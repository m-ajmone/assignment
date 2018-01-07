package it.assignment.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import it.assignment.model.User;


public interface UserRepository extends JpaRepository<User, Long> {
    public User findByUsername(String username);
    public List<User> findAll();
}
