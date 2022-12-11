package com.example.kinomaniak.service.auth;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.repository.EmployeeRepository;
import javafx.beans.property.StringProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AuthService {

    private Employee currentlyLoggedEmployee;

    private final EmployeeRepository employeeRepository;

    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Autowired
    public AuthService(EmployeeRepository employeeRepository){
        this.employeeRepository = employeeRepository;
    }

    public boolean authenticateUser(String mail, String password){
        Optional<Employee> foundEmployee = employeeRepository.findByMail(mail);
        if (foundEmployee.isPresent() && passwordEncoder.matches(password, foundEmployee.get().getPassword())) {
            currentlyLoggedEmployee = foundEmployee.get();
            return true;
        }

        return false;
    }

    public boolean addUser(String mail,
                           String password,
                           String name,
                           String surname) {
        Employee employee = new Employee(mail, passwordEncoder.encode(password), name, surname);

        employeeRepository.save(employee);
        return true;
    }

}
