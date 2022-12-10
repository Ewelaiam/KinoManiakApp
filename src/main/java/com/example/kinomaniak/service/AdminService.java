package com.example.kinomaniak.service;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.Role;
import com.example.kinomaniak.repository.EmployeeRepository;
import com.example.kinomaniak.repository.FilmShowRepository;
import com.example.kinomaniak.repository.TicketRepository;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    public EmployeeRepository employeeRepository;
    public TicketRepository ticketRepository;
    public FilmShowRepository filmShowRepository;

    public AdminService(EmployeeRepository employeeRepository, TicketRepository ticketRepository, FilmShowRepository filmShowRepository) {
        this.employeeRepository = employeeRepository;
        this.ticketRepository = ticketRepository;
        this.filmShowRepository = filmShowRepository;
    }

    public Employee addNewUser(Role role, String name, String surName, String mail, String password){
        Employee employee = new Employee(role, name, surName, mail, password);
        return employeeRepository.save(employee);
    }

    public Employee showEmployeeWhoSoldTheMostTickets(){
        return ticketRepository.findBestEmployee().getEmployee();
    }

    public Integer numberOfCashier(){
        return employeeRepository.findAllByRoleRoleName("cashier").size();
    }

    public Integer numberOfManagers(){
        return employeeRepository.findAllByRoleRoleName("manager").size();
    }

    public Hall showTheOftenChosenHallForEvents(){
        return filmShowRepository.findTheOftenChosenHallForEvents().getHall();
    }

    public Movie showMovieWithTheMostViewer(){
        return ticketRepository.findBestMovie().getFilmShow().getMovie();
    }
}
