package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.service.AdminService;
import com.example.kinomaniak.service.AuthService;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.ManagerService;
import javafx.collections.ObservableList;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxControllerAndView;
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


    private ToggleGroup modeButtonsGroup;


    @FXML
    public VBox usageModeRadioButtons;

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
    private Button recommendedMoviesButton;
    @FXML
    public Button logoutButton;
    @FXML
    public Button changeRole;

    private final SimpleBooleanProperty isScreeningsVisible = new SimpleBooleanProperty();
    private final SimpleBooleanProperty isMoviesVisible = new SimpleBooleanProperty();
    private final SimpleBooleanProperty isHallVisible = new SimpleBooleanProperty();
    private final SimpleBooleanProperty isStatisticsVisible = new SimpleBooleanProperty();
    private final SimpleBooleanProperty isUsersVisible = new SimpleBooleanProperty();
    private final SimpleBooleanProperty isEmailVisible = new SimpleBooleanProperty();

    private final SimpleBooleanProperty isRecommendedMoviesVisible = new SimpleBooleanProperty();

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

        setBindings();
    }

    private void setBindings(){
        screeningsButton.managedProperty().bind(isScreeningsVisible);
        moviesButton.managedProperty().bind(isMoviesVisible);
        hallButton.managedProperty().bind(isHallVisible);
        statisticsButton.managedProperty().bind(isStatisticsVisible);
        usersButton.managedProperty().bind(isUsersVisible);
        emailButton.managedProperty().bind(isEmailVisible);
        recommendedMoviesButton.managedProperty().bind(isRecommendedMoviesVisible);

        screeningsButton.visibleProperty().bind(isScreeningsVisible);
        moviesButton.visibleProperty().bind(isMoviesVisible);
        hallButton.visibleProperty().bind(isHallVisible);
        statisticsButton.visibleProperty().bind(isStatisticsVisible);
        usersButton.visibleProperty().bind(isUsersVisible);
        emailButton.visibleProperty().bind(isEmailVisible);
        recommendedMoviesButton.visibleProperty().bind(isRecommendedMoviesVisible);
    }

    private void setModeButtonGroup(){
        modeButtonsGroup = new ToggleGroup();
        cashierModeButton.setToggleGroup(modeButtonsGroup);
        managerModeButton.setToggleGroup(modeButtonsGroup);
        adminModeButton.setToggleGroup(modeButtonsGroup);

        cashierModeButton.setSelected(true);
        changeMode();
    }

    private void setModeButtonsVisibility(){
        if (authService.getCurrentlyLoggedEmployee().getRole() == null){
            usageModeRadioButtons.setVisible(false);
            usageModeRadioButtons.setManaged(false);
            disableAllButtons();
            return;
        }
        switch (authService.getCurrentlyLoggedEmployee().getRole().getRoleName()){
            case "cashier" -> {
                usageModeRadioButtons.setVisible(false);
                usageModeRadioButtons.setManaged(false);

            }
            case "manager" -> {
                usageModeRadioButtons.setVisible(true);
                usageModeRadioButtons.setManaged(true);
                adminModeButton.setVisible(false);
                adminModeButton.setManaged(false);
            }
            case "admin" -> {
                usageModeRadioButtons.setVisible(true);
                usageModeRadioButtons.setManaged(true);
                adminModeButton.setVisible(true);
                adminModeButton.setManaged(true);
            }
        }
    }

    public void changeMode(){
        clearMainView();
        RadioButton selected = (RadioButton) modeButtonsGroup.getSelectedToggle();
        String selectedMode = selected.getText();
        authService.setDisplayMode(selectedMode);
        resetMenuButtons();
    }

    private void resetMenuButtons(){
        switch (authService.getDisplayMode()) {
            case "Cashier" -> {
                disableAllButtons();
                isMoviesVisible.set(true);
                isScreeningsVisible.set(true);

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
                isMoviesVisible.set(true);
                isScreeningsVisible.set(true);
                isHallVisible.set(true);
                isStatisticsVisible.set(true);
                isRecommendedMoviesVisible.set(true);

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

                statisticsButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showStatisticsManager();
                    }
                });

                recommendedMoviesButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showRecommendedMoviesManager();
                    }
                });

            }
            case "Admin" -> {
                disableAllButtons();
                isUsersVisible.set(true);
                isEmailVisible.set(true);
                usersButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                    @Override
                    public void handle(MouseEvent event) {
                        showAccountsAdmin();
                    }
                });

            }
        }
    }

    private void disableAllButtons(){
        isEmailVisible.set(false);
        isMoviesVisible.set(false);
        isScreeningsVisible.set(false);
        isHallVisible.set(false);
        isStatisticsVisible.set(false);
        isUsersVisible.set(false);
        isRecommendedMoviesVisible.set(false);

    }

    public void setCredentialsLabel(){
        Employee currentlyLoggedEmployee = this.authService.getCurrentlyLoggedEmployee();
        String credentials = currentlyLoggedEmployee.getName() + " " + currentlyLoggedEmployee.getSurName();
        this.credentialsLabel.setText(credentials);
    }

    private void clearMainView() {
        mainContent.setCenter(null);
    }

    public void showScreeningsCashier() {
        System.out.println("Screenings Cashier");
        GridPane cashierScreeningPane = fxWeaver.loadView(CashierScreeningsViewController.class);
        mainContent.setCenter(cashierScreeningPane);
    }
    public void showScreeningsCashier(String movieTitle) {
        System.out.println("Screenings Cashier");
        FxControllerAndView<CashierScreeningsViewController,GridPane> controllerAndView = fxWeaver.load(CashierScreeningsViewController.class,null);
        controllerAndView.getController().searchMovieTitle(movieTitle);
        mainContent.setCenter(controllerAndView.getView().get());
    }

    public void showScreeningsCashier(int hallNo) {
        System.out.println("Screenings Cashier");
        FxControllerAndView<CashierScreeningsViewController,GridPane> controllerAndView = fxWeaver.load(CashierScreeningsViewController.class,null);
        controllerAndView.getController().searchHallNo(hallNo);
        mainContent.setCenter(controllerAndView.getView().get());
    }

    public void showScreeningsManager() {
        System.out.println("Screenings Manager");
        GridPane managerScreeningPane = fxWeaver.loadView(ManagerScreeningViewController.class);
        mainContent.setCenter(managerScreeningPane);
    }


    public void showFilmsCashier() {
        System.out.println("Films cashier");
        GridPane cashierMoviePane = fxWeaver.loadView(CashierMovieViewController.class);
        mainContent.setCenter(cashierMoviePane);
    }

    public void showAccountsAdmin(){
        System.out.println("Accounts admin");
        GridPane adminAccountsPane = fxWeaver.loadView(AdminAccountsViewController.class);
        mainContent.setCenter(adminAccountsPane);
    }

    private void showRecommendedMoviesManager() {
        System.out.println("Recommended movies manager");
        GridPane managerRecommendedMoviesPane = fxWeaver.loadView(ManagerRecommendedMovieViewController.class);
        mainContent.setCenter(managerRecommendedMoviesPane);
    }

    public void showFilmsManager() {
        System.out.println("Films manager");
        GridPane managerMoviePane = fxWeaver.loadView(ManagerMovieViewController.class);
        mainContent.setCenter(managerMoviePane);
    }


    public void showHallsManager() {
        System.out.println("Halls manager");
        GridPane managerHallPane = fxWeaver.loadView(ManagerHallViewController.class);
        mainContent.setCenter(managerHallPane);
    }

    public void showStatisticsManager() {
        System.out.println("Statistics manager");
        GridPane managerStatisticsPane = fxWeaver.loadView(ManagerStatisticsController.class);
        mainContent.setCenter(managerStatisticsPane);
    }

    public void logout(){
        authService.logout();

        fxWeaver.loadController(LoginController.class).setStage(this.stage);
        fxWeaver.loadController(LoginController.class).resetTextFields();
        Parent root = fxWeaver.loadView(LoginController.class);
        Scene scene = new Scene(root, 1000, 550);
        stage.setWidth(1000);
        stage.setHeight(550);
        stage.setMinWidth(1000);
        stage.setMinHeight(550);
        stage.setScene(scene);
        stage.show();
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

    public void showAccountEditDialog(Employee employee, TableView<Employee> accountsTable) {
        FxControllerAndView<AccountEditDialogPresenter, GridPane> fxControllerAndView =
                fxWeaver.load(AccountEditDialogPresenter.class,null);


        // Create the dialog Stage.
        Stage dialogStage = new Stage();
        dialogStage.setTitle("Edit Account");
        dialogStage.initModality(Modality.WINDOW_MODAL);
        dialogStage.initOwner(stage);
        Scene scene = new Scene(fxControllerAndView.getView().get());
        dialogStage.setScene(scene);

        // Set the transaction into the presenter.
        fxControllerAndView.getController().setDialogStage(dialogStage);
        fxControllerAndView.getController().setData(employee,accountsTable);

        // Show the dialog and wait until the user closes it
        dialogStage.showAndWait();

    }

    public void showAccountDeleteDialog(Employee employee,ObservableList<Employee> accounts) {

        FxControllerAndView<AccountDeleteDialogPresenter, BorderPane> fxControllerAndView =
                fxWeaver.load(AccountDeleteDialogPresenter.class,null);


        // Create the dialog Stage.
        Stage dialogStage = new Stage();
        dialogStage.setTitle("Delete Account");
        dialogStage.initModality(Modality.WINDOW_MODAL);
        dialogStage.initOwner(stage);
        Scene scene = new Scene(fxControllerAndView.getView().get());
        dialogStage.setScene(scene);

        // Set the transaction into the presenter.
        fxControllerAndView.getController().setDialogStage(dialogStage);
        fxControllerAndView.getController().setData(employee,accounts);

        // Show the dialog and wait until the user closes it
        dialogStage.showAndWait();

    }
    public void changeModeIntoCashier(){
        cashierModeButton.setSelected(true);
        changeMode();
    }


    public void changeRole() {
        if(!usageModeRadioButtons.isVisible()){
            usageModeRadioButtons.setVisible(true);
            usageModeRadioButtons.setManaged(true);
            setModeButtonsVisibility();
        } else {
            usageModeRadioButtons.setVisible(false);
            usageModeRadioButtons.setManaged(false);
        }
    }
}
