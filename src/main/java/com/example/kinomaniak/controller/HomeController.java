package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.service.AdminService;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.ManagerService;
import org.springframework.stereotype.Component;

@Component
public class HomeController {

    private final ManagerService managerService;
    private final CashierService cashierService;
    private final AdminService adminService;

    public HomeController(ManagerService managerService, CashierService cashierService, AdminService adminService) {
        this.managerService = managerService;
        this.cashierService = cashierService;
        this.adminService = adminService;
    }

    public void reserveTicketsForGivenFilm() {
//        cashierService.reserveTicketsForGivenFilm(filmShow, employee, seatNo);
    }

    public void changePassword() {
//        cashierService.changePassword(mail, password);
    }

    public void showRecommendedFilms(){
//        cashierService.findRecommendedMovies();
    }

    public void addFilmShow(){
//        managerService.addFilmShow(hall, movie, date, ticketPrice);
    }

    public void addMovie(){
//        managerService.addMovie(title, director, description, category, duration, premierDate, ageRestriction);
    }

    public void addNewUser(){
//        adminService.addNewUser(role, name, surName, mail, password);
    }

    public void showEmployeeWhoSoldTheMostTickets(){
//        return adminService.showEmployeeWhoSoldTheMostTickets();
    }

    public void numberOfCashier(){
//        return adminService.numberOfCashier();
    }

    public void numberOfManagers(){
//        return adminService.numberOfManagers();
    }

    public Hall showTheOftenChosenHallForEvents(){
        return adminService.showTheOftenChosenHallForEvents();
    }

    public Movie showMovieWithTheMostViewer(){
        return adminService.showMovieWithTheMostViewer();
    }

}
