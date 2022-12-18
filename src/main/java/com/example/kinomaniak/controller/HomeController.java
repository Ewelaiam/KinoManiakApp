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
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.control.ToggleGroup;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
@FxmlView("homeView.fxml")
public class HomeController {

    private final ManagerService managerService;
    private final CashierService cashierService;
    private final AdminService adminService;
    private final AuthService authService;


    private Stage stage;

    private FxWeaver fxWeaver;


    private ToggleGroup modeButtonsGroup;


    @FXML
    public HBox usageModeRadioButtons;

    @FXML
    public RadioButton cashierModeButton;

    @FXML
    public RadioButton managerModeButton;

    @FXML
    public RadioButton adminModeButton;

    @FXML
    public BorderPane mainContent;
    @FXML
    public VBox viewButtons;
    @FXML
    public Label credentialsLabel;
    @FXML
    public Button screeningsButton;
    @FXML
    public Button moviesButton;
    @FXML
    public Button hallButton;
    @FXML
    public Button statisticsButton;
    @FXML
    public Button usersButton;
    @FXML
    public Button emailButton;
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
        setModeButtonGroup();

    }

    private void setModeButtonGroup(){
        modeButtonsGroup = new ToggleGroup();
        cashierModeButton.setToggleGroup(modeButtonsGroup);
        managerModeButton.setToggleGroup(modeButtonsGroup);
        adminModeButton.setToggleGroup(modeButtonsGroup);
    }

    public void changeMode(){
        RadioButton selected = (RadioButton) modeButtonsGroup.getSelectedToggle();
        String selectedMode = selected.getText();
        authService.setDisplayMode(selectedMode);
        resetMenuButtons();
    }

    private void resetMenuButtons(){
        System.out.println(authService.getDisplayMode());
        switch (authService.getDisplayMode()) {
            case "Cashier" -> {
                disableAllButtons();
                moviesButton.setManaged(true);
                screeningsButton.setManaged(true);
                logoutButton.setManaged(true);
                moviesButton.setVisible(true);
                screeningsButton.setVisible(true);
                logoutButton.setVisible(true);
                screeningsButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showScreeningsCashier();
                    }
                });
                moviesButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showFilmsCashier();
                    }
                });
            }
            case "Manager" -> {
                disableAllButtons();
                moviesButton.setManaged(true);
                screeningsButton.setManaged(true);
                hallButton.setManaged(true);
                statisticsButton.setManaged(true);
                logoutButton.setManaged(true);
                moviesButton.setVisible(true);
                screeningsButton.setVisible(true);
                hallButton.setVisible(true);
                statisticsButton.setVisible(true);
                logoutButton.setVisible(true);
                screeningsButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showScreeningsManager();
                    }
                });
                moviesButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showFilmsManager();
                    }
                });
                hallButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showHallsManager();
                    }
                });

            }
            case "Admin" -> {
                System.out.println("DUPA");
                disableAllButtons();
                usersButton.setManaged(true);
                emailButton.setManaged(true);
                logoutButton.setManaged(true);
                usersButton.setVisible(true);
                emailButton.setVisible(true);
                logoutButton.setVisible(true);
            }
            default -> {
            }
        }
    }

    private void disableAllButtons(){
        moviesButton.setManaged(false);
        screeningsButton.setManaged(false);
        logoutButton.setManaged(false);
        hallButton.setManaged(false);
        statisticsButton.setManaged(false);
        emailButton.setManaged(false);
        usersButton.setManaged(false);

        moviesButton.setVisible(false);
        screeningsButton.setVisible(false);
        logoutButton.setVisible(false);
        hallButton.setVisible(false);
        statisticsButton.setVisible(false);
        emailButton.setVisible(false);
        usersButton.setVisible(false);
    }

    public void setCredentialsLabel(){
        Employee currentlyLoggedEmployee = this.authService.getCurrentlyLoggedEmployee();
        String credentials = currentlyLoggedEmployee.getName() + " " + currentlyLoggedEmployee.getSurName();
        this.credentialsLabel.setText(credentials);
    }

    public void showScreeningsCashier() {
        System.out.println("Screenings Cashier");
//        BorderPane test = fxWeaver.loadView(LoginController.class);
//        loader.setController(new Startpage(m));
//        Pane mainPane = loader.load();
//        mainContent.setCenter(test);
    }

    public void showScreeningsManager() {
        System.out.println("Screenings Manager");
    }

    public void showFilmsCashier() {
        System.out.println("Films cashier");
    }

    public void showFilmsManager() {
        System.out.println("Films manager");
    }


    public void showHallsManager() {
        System.out.println("Halls manager");
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
