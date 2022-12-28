package com.example.kinomaniak.service;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.repository.EmployeeRepository;
import javafx.beans.property.StringProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.regex.Pattern;

@Service
public class AuthService {

    private Employee currentlyLoggedEmployee;

    // states in which mode (cashier, manager or admin) we are currently browsing in
    private String displayMode = "Cashier";

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

    public Employee getCurrentlyLoggedEmployee() {
        return currentlyLoggedEmployee;
    }

    public boolean addUser(String mail,
                           String password,
                           String name,
                           String surname) {

        if (performEmailValidation(mail)
                && performCredentialsValidation(name, surname)
                && performPasswordValidation(password)){

            Employee employee = new Employee(mail, passwordEncoder.encode(password), name, surname);

            employeeRepository.save(employee);
            currentlyLoggedEmployee = employee;

            return true;
        }

        return false;
    }

    public boolean performEmailValidation(String mail){
        String regexPattern = "^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@"
                + "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";

        boolean isAvailable = employeeRepository.findByMail(mail).isEmpty();

        return Pattern.compile(regexPattern)
                .matcher(mail)
                .matches() && isAvailable;
    }

    private boolean performPasswordValidation(String password){
        return password.length() >= 8;
    }

    public boolean performCredentialsValidation(String name, String surName){
        return name.length() > 0 && surName.length() > 0;
    }

    public void setDisplayMode(String displayMode) {
        this.displayMode = displayMode;
    }

    public String getDisplayMode() {
        return displayMode;
    }
}
