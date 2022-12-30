package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.ManagerService;
import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.layout.TilePane;
import javafx.scene.layout.VBox;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
@FxmlView("managerMovieView.fxml")
public class ManagerMovieViewController {

    private final CashierService cashierService;
    private final ManagerService managerService;
    private List<MovieCategory> movieCategories;
    private List<Movie> movies;

    private SpinnerValueFactory<Integer> valueFactory;

    @FXML
    public Label addMovieErrorPrompt;
    @FXML
    public TextField moviePosterURL;
    @FXML
    public TilePane categoryTilePane;
    @FXML
    public TextField movieDescription;
    @FXML
    public TextField nameOfDirector;
    @FXML
    public TextField movieTitle;
    @FXML
    public ComboBox<String> ageRestrictionComboBox;
    @FXML
    public DatePicker premierDatePicker;
    @FXML
    public Spinner<Integer> durationSpinner;

    // todo: zmienić na checkbox list
//    @FXML
//    public ComboBox<String> categoryComboBox;
    @FXML
    public Button addMovieBtn;
    @FXML
    public Button removeMovieBtn;
    @FXML
    public VBox addMovieForm;


    @FXML
    public void showAddMovieForm(){
        addMovieForm.setVisible(true);
    }

    @FXML
    public void removeMovie(){}

    @FXML
    public void addMovieToProgram(){
        Set<String> chosenMovieCategoryNames = new HashSet<>();

        for (Node category : categoryTilePane.getChildren()){
            CheckBox checkBox = (CheckBox) category;
            if (checkBox.isSelected()){
                chosenMovieCategoryNames.add(checkBox.getText());
            }
        }

        Set<MovieCategory> chosenMovieCategories = movieCategories.stream().filter(movieCategory -> chosenMovieCategoryNames.contains(movieCategory.getCategoryName())).collect(Collectors.toSet());

        if(inputValidation(movieTitle.getText(), nameOfDirector.getText(), movieDescription.getText(),
                chosenMovieCategories, ageRestrictionComboBox.getValue(), moviePosterURL.getText())){
            managerService.addMovie(movieTitle.getText(), nameOfDirector.getText(), movieDescription.getText(),
                    chosenMovieCategories, durationSpinner.getValue(), premierDatePicker.getValue(), Integer.valueOf(ageRestrictionComboBox.getValue()), moviePosterURL.getText());
        }

    }

    @FXML
    private void initialize(){
        setUpCategories();
        setUpDurationSpinner();
        setUpPremierDatePicker();
        setUpAgeRestrictionComboBox();
    }

    public ManagerMovieViewController(CashierService cashierService, ManagerService managerService) {
        this.cashierService = cashierService;
        this.managerService = managerService;
    }

    public void setUpCategories(){
        this.movieCategories = cashierService.getMovieCategories();

        for (MovieCategory movieCategory : movieCategories){
            CheckBox checkBox = new CheckBox(movieCategory.getCategoryName());
            checkBox.setPrefWidth(100);
            categoryTilePane.getChildren().add(checkBox);
        }
    }

    public void setUpDurationSpinner(){
        valueFactory = new SpinnerValueFactory.IntegerSpinnerValueFactory(1,300);
        valueFactory.setValue(100);
        durationSpinner.setValueFactory(valueFactory);
        durationSpinner.setEditable(true);

    }

    public void setUpPremierDatePicker(){
        premierDatePicker.setDayCellFactory(picker -> new DateCell() {
            public void updateItem(LocalDate date, boolean empty) {
                super.updateItem(date, empty);
                LocalDate today = LocalDate.now();
                setDisable(empty || date.compareTo(today) < 0 );
            }
        });
        premierDatePicker.setValue(LocalDate.now());
    }

    public void setUpAgeRestrictionComboBox(){
        this.movies = cashierService.getMovies();
        ageRestrictionComboBox.getItems().add("not specified");
        ageRestrictionComboBox.getItems().addAll(movies.stream().map(Movie::getAgeRestriction).map(Object::toString).collect(Collectors.toSet()));
        ageRestrictionComboBox.getSelectionModel().selectFirst();
    }

    public boolean inputValidation(String title, String director, String description, Set<MovieCategory> categories, String ageRestriction, String posterURL){
        String errorMsg = "";
        if(title.isBlank()){
            errorMsg += "Title field is required!";
        }
        if(director.isBlank() || !director.contains(" ")){
            errorMsg += "\t Director field needs name and surname of director!";
        }
        if(description.isBlank() || description.length() > 255){
            errorMsg += "\t Description field cannot be blank and max length is 255!";
        }
        if(categories.isEmpty()){
            errorMsg += "\t At least one category is required!";
        }
        if(ageRestriction.equals("not specified")){
            errorMsg += "\t Age restriction is not specified!";
        }
        if(posterURL.isBlank()){
            errorMsg += "\t Poster URL field is required!";
        }

        addMovieErrorPrompt.setText(errorMsg);

        return addMovieErrorPrompt.getText().isBlank();
    }


}
