package com.example.kinomaniak.service;

import com.example.kinomaniak.model.*;
import com.example.kinomaniak.repository.EmployeeRepository;
import com.example.kinomaniak.repository.FilmShowRepository;
import com.example.kinomaniak.repository.RoleRepository;
import com.example.kinomaniak.repository.TicketRepository;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AdminService {
    private final EmployeeRepository employeeRepository;
    private final TicketRepository ticketRepository;
    private final FilmShowRepository filmShowRepository;
    private final RoleRepository roleRepository;

    public AdminService(EmployeeRepository employeeRepository, TicketRepository ticketRepository,
                        FilmShowRepository filmShowRepository,RoleRepository roleRepository) {
        this.employeeRepository = employeeRepository;
        this.ticketRepository = ticketRepository;
        this.filmShowRepository = filmShowRepository;
        this.roleRepository = roleRepository;
    }

    public Employee addNewUser(Role role, String name, String surName, String mail, String password){
        Employee employee = new Employee(role, name, surName, mail, password);
        return employeeRepository.save(employee);
    }

    public Employee showEmployeeWhoSoldTheMostTickets(){
        Optional<Ticket> ticketData = ticketRepository.findBestEmployee();
        return ticketData.map(Ticket::getEmployee).orElse(null);
    }

//    public Integer numberOfCashier(){
//        Optional<List<Employee>> cashiers = employeeRepository.findAllByRoleName("cashier");
//        return cashiers.map(List::size).orElse(0);
//    }

//    public Integer numberOfManagers(){
//        Optional<List<Employee>> managers = employeeRepository.findAllByRoleName("manager");
//        return managers.map(List::size).orElse(0);
//    }

    public Hall showTheOftenChosenHallForEvents(){
        Optional<FilmShow> oftenChosenHallData = filmShowRepository.findTheOftenChosenHallForEvents();
        return oftenChosenHallData.map(FilmShow::getHall).orElse(null);
    }

    public Movie showMovieWithTheMostViewer(){
        Optional<Ticket> ticketData = ticketRepository.findBestMovie();
        return ticketData.map(ticket -> ticket.getFilmShow().getMovie()).orElse(null);
    }

    public ObservableList<Employee> getEmployees(){
        return FXCollections.observableList(employeeRepository.findAll());
    }
    public ObservableList<Role> getRoles(){
        return FXCollections.observableList(roleRepository.findAll());
    }

    public void deleteEmployee(Employee employee) {
        employeeRepository.delete(employee);
    }

    public void saveEditedEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    public Optional<Role> getRoleWithName(String name) {
        return roleRepository.findByRoleName(name);
    }
    public boolean employeeSoldTickets(Employee employee){
        return ticketRepository.getNoSoldTickets(employee) > 0;
    }
}
