package com.example.kinomaniak.controller;

import com.example.kinomaniak.service.CashierService;
import org.springframework.stereotype.Component;

@Component
public class CashierController {

    private CashierService cashierService;


    public CashierController(CashierService cashierService) {
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

}
