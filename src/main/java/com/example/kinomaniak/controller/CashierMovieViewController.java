package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.service.CashierService;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;

import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.Pane;
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
    public TableView<Movie> moviesTable;
    @FXML
    public TableColumn<Movie,String> titleColumn;
    @FXML
    public TableColumn<Movie,String> directorColumn;
    @FXML
    public TableColumn<Movie,Integer> durationColumn;
    @FXML
    public TableColumn<Movie, LocalDate> premierDateColumn;
    @FXML
    public TableColumn<Movie,Integer> ageRestrictionColumn;
    @FXML
    public TextField searchTextField;
    @FXML
    public ComboBox<String> genreComboBox;
    @FXML
    public Button recommendedMoviesButton;
    @FXML
    public ComboBox<String> ageRestrictionComboBox;
    @FXML
    public Button showScreeningsButton;
    @FXML
    public Pane bottomPane;
    @FXML
    public Button hideBottomPaneButton;

    @FXML
    public ImageView moviePosterImageView;
    @FXML
    public Label descriptionLabel;
    @FXML
    public Button resetFiltersButton;
    @FXML
    public Label titleLabel;

    private FxWeaver fxWeaver;

    private ObservableList<Movie> movies;
    private List<MovieCategory> movieCategories;

    @Autowired
    public CashierMovieViewController(FxWeaver fxWeaver, CashierService cashierService) {
        this.fxWeaver = fxWeaver;
        this.cashierService = cashierService;
    }

    @FXML
    private void initialize(){
        //load data from database once
        loadData();

        setUpMoviesTable();
        setUpGenreComboBox();
        setUpAgeRestrictionComboBox();

        setUpSearchTextField();

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
            }
            if(newValue == null){
                moviesTable.setPrefHeight(moviesTable.getPrefHeight() + 100.0);
                bottomPane.setPrefHeight(bottomPane.getPrefHeight() - 100.0);
                bottomPane.setVisible(false);
            }else{
                titleLabel.textProperty().bind(new SimpleStringProperty(newValue.getTitle()));
                descriptionLabel.textProperty().bind(new SimpleStringProperty(newValue.getDescription()));
                moviePosterImageView.imageProperty().bind(new SimpleObjectProperty<>(new Image(newValue.getPosterURL())));
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
                .filter(movie -> movie.getPremierDate().isAfter(LocalDate.now().minusMonths(1)))
                .collect(Collectors.toList()))
        );

    }

    @FXML
    private void removeSelection() {
        moviesTable.getSelectionModel().clearSelection();
    }


}
