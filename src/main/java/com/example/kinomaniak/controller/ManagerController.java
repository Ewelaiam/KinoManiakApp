package com.example.kinomaniak.controller;

import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.ManagerService;
import org.springframework.stereotype.Component;

@Component
public class ManagerController {

    private ManagerService managerService;
    private CashierService cashierService;

    public ManagerController(ManagerService managerService, CashierService cashierService) {
        this.managerService = managerService;
        this.cashierService = cashierService;
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
}
