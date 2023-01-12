package com.example.kinomaniak.controller;


import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.service.ManagerService;
import javafx.beans.binding.Bindings;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.VBox;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.stream.Collectors;

@Component
@FxmlView("managerRecommendedMovieView.fxml")
public class ManagerRecommendedMovieViewController {
    @FXML
    private ComboBox<String> isRecommendedComboBox;
    @FXML
    private VBox filtersVBox;
    @FXML
    private Button toggleFiltersButton;
    @FXML
    private TextField searchTextField;
    @FXML
    private Button resetFiltersButton;
    @FXML
    private TableView<Movie> moviesTable;
    @FXML
    private TableColumn<Movie,String> titleColumn;
    @FXML
    private TableColumn<Movie,String> directorColumn;
    @FXML
    private TableColumn<Movie,String> isRecommendedColumn;

    @FXML
    private Button changeRecommendationButton;


    private ManagerService managerService;
    private HomeController homeController;

    private ObservableList<Movie> movies;

    @Autowired
    public ManagerRecommendedMovieViewController(ManagerService managerService, HomeController homeController) {
        this.managerService = managerService;
        this.homeController = homeController;
    }

    @FXML
    private void initialize(){
        //load data from database once
        loadData();

        setUpRecommendedMoviesTable();

        changeRecommendationButton.disableProperty().bind(Bindings.isEmpty(moviesTable.getSelectionModel().getSelectedItems()));
        setUpSearchTextField();
        setUpIsRecommendedComboBox();
        setColumnsWidthPercentage();

    }

    private void setUpSearchTextField() {
        searchTextField.textProperty().addListener(title-> moviesTable.setItems(filterResults()));
    }

    private ObservableList<Movie> filterResults() {
        removeSelection();
        return FXCollections.observableList(movies
                .stream()
                .filter(movie -> movie.getTitle().toLowerCase().contains(searchTextField.getText()))
                .filter(movie -> {
                    switch(isRecommendedComboBox.getValue()){
                        case "not specified" -> {return true;}
                        case "yes" -> {return movie.getIsRecommended();}
                        default -> {return !movie.getIsRecommended();}
                    }
                })
                .collect(Collectors.toList())

        );
    }

    private void removeSelection() {
        moviesTable.getSelectionModel().clearSelection();
    }

    private void setUpIsRecommendedComboBox() {
        isRecommendedComboBox.getItems().add("not specified");
        isRecommendedComboBox.getItems().add("yes");
        isRecommendedComboBox.getItems().add("no");
        isRecommendedComboBox.getSelectionModel().selectFirst();
        isRecommendedComboBox.valueProperty().addListener(isRecommended->moviesTable.setItems(filterResults()));

    }

    private void setUpRecommendedMoviesTable() {
        moviesTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);

        titleColumn.setCellValueFactory(new PropertyValueFactory<>("title"));
        directorColumn.setCellValueFactory(new PropertyValueFactory<>("director"));
        isRecommendedColumn.setCellValueFactory(new PropertyValueFactory<>("isRecommended"));

        moviesTable.setItems(movies);

        moviesTable.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) ->{
            if(newValue != null){
                if(newValue.getIsRecommended()){
                    changeRecommendationButton.setText("Remove from recommended");
                }else{
                    changeRecommendationButton.setText("Add to recommended");
                }
            }
        });


    }

    private void loadData() {
        this.movies = managerService.getMovies();
    }

    private void setColumnsWidthPercentage() {
        titleColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.4));
        directorColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.3));
        isRecommendedColumn.prefWidthProperty().bind(moviesTable.widthProperty().multiply(0.25));

    }

    @FXML
    private void toggleFilters(MouseEvent mouseEvent) {
        filtersVBox.setManaged(!filtersVBox.managedProperty().getValue());
        filtersVBox.setVisible(!filtersVBox.visibleProperty().getValue());
    }

    @FXML
    private void resetFilters(){
        searchTextField.setText("");
        isRecommendedComboBox.getSelectionModel().selectFirst();
    }
    @FXML
    private void handleChangeRecommendation(ActionEvent actionEvent) {
        Movie selectedMovie = moviesTable.getSelectionModel().getSelectedItem();
        selectedMovie.setIsRecommended(!selectedMovie.getIsRecommended());
        managerService.saveMovieRecommendation(selectedMovie);
        moviesTable.refresh();

        removeSelection();

    }

}