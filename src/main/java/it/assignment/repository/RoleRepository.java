package it.assignment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import it.assignment.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	Role findByName(String name);
}
