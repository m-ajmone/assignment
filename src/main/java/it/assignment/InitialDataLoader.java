package it.assignment;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import it.assignment.model.Role;
import it.assignment.model.User;
import it.assignment.repository.RoleRepository;
import it.assignment.repository.UserRepository;

@Component
public class InitialDataLoader implements
  ApplicationListener<ContextRefreshedEvent> {
 
    boolean alreadySetup = false;
 
    @Autowired
    private UserRepository userRepository;
  
    @Autowired
    private RoleRepository roleRepository;
    
  
    @Override
    @Transactional
    public void onApplicationEvent(ContextRefreshedEvent event) {
  
        if (alreadySetup)
            return;
           
        createRoleIfNotFound("ROLE_ADMIN");
        createRoleIfNotFound("ROLE_USER");
 
        Role adminRole = roleRepository.findByName("ROLE_ADMIN");
        Role userRole = roleRepository.findByName("ROLE_USER");
        User user = new User();
        user.setUsername("admin");
        user.setPassword("admin");
        user.setEmail("admin@admin.com");
        user.setCountry("CU");
        user.setCity("La Habana");
        user.setRoles(Arrays.asList(adminRole, userRole));
        userRepository.save(user);
        
        System.out.println("LOADED///////////////////////////////");
        alreadySetup = true;
    }
 
    @Transactional
    private Role createRoleIfNotFound(
      String name) {
  
        Role role = roleRepository.findByName(name);
        if (role == null) {
            role = new Role(name);
            roleRepository.save(role);
        }
        return role;
    }
}