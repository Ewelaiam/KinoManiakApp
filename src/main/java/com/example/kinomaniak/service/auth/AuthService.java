package com.example.kinomaniak.service.auth;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.repository.EmployeeRepository;
import javafx.beans.property.StringProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    private Employee currentlyLoggedEmployee;

    private final EmployeeRepository employeeRepository;

    @Autowired
    public AuthService(EmployeeRepository employeeRepository){
        this.employeeRepository = employeeRepository;
    }

    public boolean authenticateUser(String mail, String password){
        Employee foundEmployee = employeeRepository.findByMail(mail);
        if (foundEmployee != null) {
            currentlyLoggedEmployee = foundEmployee;
            return true;
        }

        return false;
    }

}
