package com.example.kinomaniak.controller;

import com.example.kinomaniak.enums.StatisticCategory;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.StatisticsQueryService;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Component
@FxmlView("managerStatisticsView.fxml")
public class ManagerStatisticsController {
    private final CashierService cashierService;

    @FXML
    public DatePicker fromDatePicker;
    @FXML
    public DatePicker toDatePicker;
    @FXML
    private TableView<Movie> moviesTable;
    @FXML
    private TableColumn<Movie,String> titleColumn;
    @FXML
    private TableColumn<Movie,String> directorColumn;
    @FXML
    private TableColumn<Movie,Integer> durationColumn;
    @FXML
    private TableColumn<Movie, LocalDate> premierDateColumn;
    @FXML
    private TableColumn<Movie,Integer> ageRestrictionColumn;
//    @FXML
//    private TextField searchTextField;
    @FXML
    private ComboBox<String> categoryComboBox;
//    @FXML
//    private Button recommendedMoviesButton;
//    @FXML
//    private ComboBox<String> ageRestrictionComboBox;
    @FXML
    private Button showScreeningsButton;
    @FXML
    private BorderPane bottomPane;
    @FXML
    private Button hideBottomPaneButton;

    @FXML
    private ImageView moviePosterImageView;
    @FXML
    private Label descriptionLabel;
    @FXML
    private Button resetFiltersButton;
    @FXML
    private Label titleLabel;
    @FXML
    private VBox filtersVBox;
    @FXML
    private VBox tableActionsVBox;
    @FXML
    private Button toggleFiltersButton;

    private FxWeaver fxWeaver;

    private ObservableList<Movie> movies;
    private List<MovieCategory> movieCategories;
    private final HomeController homeController;
    private final StatisticsQueryService statisticsQueryService;

    @Autowired
    public ManagerStatisticsController(FxWeaver fxWeaver,
                                       CashierService cashierService,
                                       HomeController homeController,
                                       StatisticsQueryService statisticsQueryService) {
        this.fxWeaver = fxWeaver;
        this.cashierService = cashierService;
        this.homeController = homeController;
        this.statisticsQueryService = statisticsQueryService;
    }

    @FXML
    private void initialize(){
        //load data from database once
//

//        setUpMoviesTable();
        setUpCategoryComboBox();
        setUpDatePickers();
        loadData();
//        setUpAgeRestrictionComboBox();

//        setUpSearchTextField();

//        setColumnsWidthPercentage();

    }
//
////    private void setUpSearchTextField() {
////        searchTextField.textProperty().addListener(title-> moviesTable.setItems(filterResults()));
////    }
//
//    private void setUpMoviesTable() {
//        moviesTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);
//
//        titleColumn.setCellValueFactory(new PropertyValueFactory<>("title"));
//        directorColumn.setCellValueFactory(new PropertyValueFactory<>("director"));
//        durationColumn.setCellValueFactory(new PropertyValueFactory<>("duration"));
//        premierDateColumn.setCellValueFactory(new PropertyValueFactory<>("premierDate"));
//        ageRestrictionColumn.setCellValueFactory(new PropertyValueFactory<>("ageRestriction"));
//
//        moviesTable.setItems(movies);
//
//        moviesTable.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) ->
//        {
//            if(oldValue == null){
//                moviesTable.setPrefHeight(moviesTable.getPrefHeight() - 100.0);
//                bottomPane.setPrefHeight(bottomPane.getPrefHeight()+ 100.0);
//                bottomPane.setVisible(true);
//                bottomPane.setManaged(true);
//            }
//
//            if(newValue == null){
//                moviesTable.setPrefHeight(moviesTable.getPrefHeight() + 100.0);
//                bottomPane.setPrefHeight(bottomPane.getPrefHeight() - 100.0);
//                bottomPane.setVisible(false);
//                bottomPane.setManaged(false);
//            }else{
//                titleLabel.textProperty().bind(new SimpleStringProperty(newValue.getTitle()));
//                descriptionLabel.textProperty().bind(new SimpleStringProperty(newValue.getDescription()));
//                Image image;
//                try{
//                    image = new Image(newValue.getPosterURL());
//                    moviePosterImageView.imageProperty().bind(new SimpleObjectProperty<>(image));
//                }catch (IllegalArgumentException e){
//                    System.out.println("wrong url");
//                    moviePosterImageView.imageProperty().unbind();
//                    moviePosterImageView.setImage(null);
//
//                }
//            }
//        } );
//    }
//
////    private void setUpAgeRestrictionComboBox() {
////        this.ageRestrictionComboBox.getItems().add("not specified");
////        this.ageRestrictionComboBox.getItems().addAll(movies.stream().map(Movie::getAgeRestriction).map(Object::toString).collect(Collectors.toSet()));
////        this.ageRestrictionComboBox.getSelectionModel().selectFirst();
////        ageRestrictionComboBox.valueProperty().addListener(age->moviesTable.setItems(filterResults()));
////
////    }
//

    private void setUpDatePickers() {
        fromDatePicker.setDayCellFactory(picker -> new DateCell() {
            public void updateItem(LocalDate date, boolean empty) {
                super.updateItem(date, empty);
                LocalDate today = LocalDate.now();
                setDisable(empty  || date.compareTo(toDatePicker.getValue()) >= 0);
            }
        });
        toDatePicker.setDayCellFactory(picker -> new DateCell() {
            public void updateItem(LocalDate date, boolean empty) {
                super.updateItem(date, empty);
                LocalDate today = LocalDate.now();
                setDisable(empty  || date.compareTo(fromDatePicker.getValue()) <= 0);
            }
        });
        fromDatePicker.setValue(LocalDate.now().minusDays(7));
        toDatePicker.setValue(LocalDate.now());

        fromDatePicker.valueProperty().addListener(date-> loadData());
        toDatePicker.valueProperty().addListener(date-> loadData());
    }

    private void setUpCategoryComboBox() {

        this.categoryComboBox.getItems().addAll(Arrays.stream(StatisticCategory.values()).map(StatisticCategory::getLabel).collect(Collectors.toList()));
        this.categoryComboBox.getSelectionModel().selectFirst();
        categoryComboBox.valueProperty().addListener(category-> loadData());

    }
//
    private void loadData() {
        switch (categoryComboBox.getValue()){
            case "Best cashier" -> {
                for (Object[] record : statisticsQueryService.getBestCashiers(fromDatePicker.getValue(), toDatePicker.getValue())){
                    System.out.println("Record");
                    System.out.println(record[0]);
                    System.out.println(record[1]);
                    System.out.println(record[2]);
                    System.out.println(record[3]);
                }
            }
            case "Most watched movies" -> {
                for (Object[] record : statisticsQueryService.getMostWatchedMovies(fromDatePicker.getValue(), toDatePicker.getValue())){
                    System.out.println("Record");
                    System.out.println(record[0]);
                    System.out.println(record[1]);
                    System.out.println(record[2]);
                    System.out.println(record[3]);
                }
            }
            case "Most profitable movies" -> {
                for (Object[] record : statisticsQueryService.getMostProfitableMovies(fromDatePicker.getValue(), toDatePicker.getValue())){
                    System.out.println("Record");
                    System.out.println(record[0]);
                    System.out.println(record[1]);
                    System.out.println(record[2]);
                    System.out.println(record[3]);
                }
            }
            case "Most popular halls" -> {
                for (Object[] record : statisticsQueryService.getMostPopularHalls(fromDatePicker.getValue(), toDatePicker.getValue())){
                    System.out.println("Record");
                    System.out.println(record[0]);
                    System.out.println(record[1]);
                    System.out.println(record[2]);
                }
            }
            case "Earnings from tickets" -> {
                for (Object[] record : statisticsQueryService.getEarningsFromTickets(fromDatePicker.getValue(), toDatePicker.getValue())){
                    System.out.println("Record");
                    System.out.println(record[0]);
                    System.out.println(record[1]);
                }
            }
        }
    }
//
//    private ObservableList<Movie> filterResults() {
//        removeSelection();
//        return FXCollections.observableList(movies
//                .stream()
////                .filter(movie -> movie.getTitle().toLowerCase().contains(searchTextField.getText()))
////                .filter(movie -> {
////                    if(genreComboBox.getValue().equals("not specified"))
////                        return true;
////                    return movie.getCategories()
////                            .stream()
////                            .map(MovieCategory::getCategoryName)
////                            .collect(Collectors.toSet())
////                            .contains(genreComboBox.getValue());})
////                .filter(movie -> {
////                    if(ageRestrictionComboBox.getValue().equals("not specified"))
////                        return true;
////                    return movie.getAgeRestriction().toString().equals(ageRestrictionComboBox.getValue());})
//                .collect(Collectors.toList())
//
//        );
//    }
    @FXML
    private void resetSelections(){
        categoryComboBox.getSelectionModel().selectFirst();
        fromDatePicker.setValue(LocalDate.now().minusDays(7));
        toDatePicker.setValue(LocalDate.now());
    }
//
//
//    public void showRecommendedMovies() {
//        removeSelection();
//        resetSelections();
//        moviesTable.setItems(FXCollections.observableList(movies
//                .stream()
//                .filter(movie -> movie.getPremierDate().isAfter(LocalDate.now().minusMonths(1)))
//                .collect(Collectors.toList()))
//        );
//
//    }
//
//    @FXML
//    private void removeSelection() {
//        moviesTable.getSelectionModel().clearSelection();
//    }
//
//
//    private void setColumnsWidthPercentage() {
//        titleColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.4));
//        directorColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.2));
//        premierDateColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.2));
//        ageRestrictionColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.1));
//        durationColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.1));
//    }
//
//
//    public void showScreenings(ActionEvent actionEvent) {
//        homeController.showScreeningsCashier(titleLabel.getText());
//
//    }
}
