package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

//@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    Employee findByMail(String mail);

    List<Employee> findAllByRoleRoleName(String roleName);
}
