package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.service.AdminService;
import com.example.kinomaniak.service.AuthService;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.ManagerService;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

@Component
@FxmlView("homeView.fxml")
public class HomeController {

    private final ManagerService managerService;
    private final CashierService cashierService;
    private final AdminService adminService;
    private final AuthService authService;

    private Stage stage;

    private FxWeaver fxWeaver;

    @FXML
    public Label credentialsLabel;
    @FXML
    public Button screeningsButton;
    @FXML
    public Button moviesButton;
    @FXML
    public Button hallButton;
    @FXML
    public Button logoutButton;

    public HomeController(ManagerService managerService,
                          CashierService cashierService,
                          AdminService adminService,
                          AuthService authService,
                          FxWeaver fxWeaver) {
        this.managerService = managerService;
        this.cashierService = cashierService;
        this.adminService = adminService;
        this.authService = authService;
        this.fxWeaver = fxWeaver;
    }

    @FXML
    private void initialize(){
        setCredentialsLabel();
    }

    public void setCredentialsLabel(){
        Employee currentlyLoggedEmployee = this.authService.getCurrentlyLoggedEmployee();
        String credentials = currentlyLoggedEmployee.getName() + " " + currentlyLoggedEmployee.getSurName();
        this.credentialsLabel.setText(credentials);
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

    public void setStage(Stage stage) {
        this.stage = stage;
    }

}
