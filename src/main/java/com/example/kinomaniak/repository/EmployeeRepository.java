package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

//@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    Employee findByMail(String mail);
}
