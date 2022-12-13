package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

//@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    @Override
    Optional<Employee> findById(Integer integer);

    Optional<Employee> findByMail(String mail);

    Optional<List<Employee>> findAllByRoleName(String roleName);
}
