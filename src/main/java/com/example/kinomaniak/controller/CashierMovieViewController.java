package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.service.CashierService;
import javafx.animation.Interpolator;
import javafx.animation.KeyFrame;
import javafx.animation.KeyValue;
import javafx.animation.Timeline;
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
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;
import javafx.util.Duration;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Component
@FxmlView("cashierMovieView.fxml")
public class CashierMovieViewController {
    private final CashierService cashierService;
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
    @FXML
    private TextField searchTextField;
    @FXML
    private ComboBox<String> genreComboBox;
    @FXML
    private Button recommendedMoviesButton;
    @FXML
    private ComboBox<String> ageRestrictionComboBox;
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

    @Autowired
    public CashierMovieViewController(FxWeaver fxWeaver, CashierService cashierService,HomeController homeController) {
        this.fxWeaver = fxWeaver;
        this.cashierService = cashierService;
        this.homeController = homeController;
    }

    @FXML
    private void initialize(){
        //load data from database once
        loadData();

        setUpMoviesTable();
        setUpGenreComboBox();
        setUpAgeRestrictionComboBox();

        setUpSearchTextField();

        setColumnsWidthPercentage();

    }

    private void setUpSearchTextField() {
        searchTextField.textProperty().addListener(title-> moviesTable.setItems(filterResults()));
    }

    private void setUpMoviesTable() {
        moviesTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);

        titleColumn.setCellValueFactory(new PropertyValueFactory<>("title"));
        directorColumn.setCellValueFactory(new PropertyValueFactory<>("director"));
        durationColumn.setCellValueFactory(new PropertyValueFactory<>("duration"));
        premierDateColumn.setCellValueFactory(new PropertyValueFactory<>("premierDate"));
        ageRestrictionColumn.setCellValueFactory(new PropertyValueFactory<>("ageRestriction"));

        moviesTable.setItems(movies);

        moviesTable.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) ->
        {
            if(oldValue == null){
                moviesTable.setPrefHeight(moviesTable.getPrefHeight() - 100.0);
                bottomPane.setPrefHeight(bottomPane.getPrefHeight()+ 100.0);
                bottomPane.setVisible(true);
                bottomPane.setManaged(true);
            }

            if(newValue == null){
                moviesTable.setPrefHeight(moviesTable.getPrefHeight() + 100.0);
                bottomPane.setPrefHeight(bottomPane.getPrefHeight() - 100.0);
                bottomPane.setVisible(false);
                bottomPane.setManaged(false);
            }else{
                titleLabel.textProperty().bind(new SimpleStringProperty(newValue.getTitle()));
                descriptionLabel.textProperty().bind(new SimpleStringProperty(newValue.getDescription()));
                Image image;
                try{
                    image = new Image(newValue.getPosterURL());
                    moviePosterImageView.imageProperty().bind(new SimpleObjectProperty<>(image));
                }catch (IllegalArgumentException e){
                    System.out.println("wrong url");
                    moviePosterImageView.imageProperty().unbind();
                    moviePosterImageView.setImage(null);

                }
            }
        } );
    }

    private void setUpAgeRestrictionComboBox() {
        this.ageRestrictionComboBox.getItems().add("not specified");
        this.ageRestrictionComboBox.getItems().addAll(movies.stream().map(Movie::getAgeRestriction).map(Object::toString).collect(Collectors.toSet()));
        this.ageRestrictionComboBox.getSelectionModel().selectFirst();
        ageRestrictionComboBox.valueProperty().addListener(age->moviesTable.setItems(filterResults()));

    }

    private void setUpGenreComboBox() {
        this.genreComboBox.getItems().add("not specified");
        this.genreComboBox.getItems().addAll(movieCategories.stream().map(MovieCategory::getCategoryName).sorted().toList());
        this.genreComboBox.getSelectionModel().selectFirst();
        genreComboBox.valueProperty().addListener(genre-> moviesTable.setItems(filterResults()));

    }

    private void loadData() {
        this.movies = cashierService.getMovies();
        this.movieCategories = cashierService.getMovieCategories();
    }

    private ObservableList<Movie> filterResults() {
        removeSelection();
        return FXCollections.observableList(movies
                .stream()
                .filter(movie -> movie.getTitle().toLowerCase().contains(searchTextField.getText()))
                .filter(movie -> {
                    if(genreComboBox.getValue().equals("not specified"))
                        return true;
                    return movie.getCategories()
                            .stream()
                            .map(MovieCategory::getCategoryName)
                            .collect(Collectors.toSet())
                            .contains(genreComboBox.getValue());})
                .filter(movie -> {
                    if(ageRestrictionComboBox.getValue().equals("not specified"))
                        return true;
                    return movie.getAgeRestriction().toString().equals(ageRestrictionComboBox.getValue());})
                .collect(Collectors.toList())

        );
    }
    @FXML
    private void resetFilters(){
        genreComboBox.getSelectionModel().selectFirst();
        ageRestrictionComboBox.getSelectionModel().selectFirst();
        searchTextField.setText("");
    }


    public void showRecommendedMovies() {
        removeSelection();
        resetFilters();
        moviesTable.setItems(FXCollections.observableList(movies
                .stream()
                .filter(Movie::getIsRecommended)
                .collect(Collectors.toList()))
        );

    }

    @FXML
    private void removeSelection() {
        moviesTable.getSelectionModel().clearSelection();
    }


    private void setColumnsWidthPercentage() {
        titleColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.4));
        directorColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.2));
        premierDateColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.2));
        ageRestrictionColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.1));
        durationColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.1));
    }

    public void toggleFilters(){
        filtersVBox.setManaged(!filtersVBox.managedProperty().getValue());
        filtersVBox.setVisible(!filtersVBox.visibleProperty().getValue());
//        if (filtersVBox.isVisible()){
//            moviesTable.setPrefHeight(moviesTable.getPrefHeight() - filtersVBox.getPrefHeight());
//        } else {
//            moviesTable.setPrefHeight(moviesTable.getPrefHeight() + filtersVBox.getPrefHeight());
//        }


    }

    public void showScreenings(ActionEvent actionEvent) {
        homeController.showScreeningsCashier(titleLabel.getText());

    }
}
