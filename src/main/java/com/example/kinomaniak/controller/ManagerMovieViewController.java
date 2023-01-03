package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.ManagerService;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
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

    // remove movie
    private final SimpleStringProperty currentMovieTitleToRemove;
    @FXML
    public TableView<Movie> movieTable;
    @FXML
    public VBox deleteMovieConfirmation;
    @FXML
    public Label titleToDelete;
    @FXML
    public TableColumn<Movie, String> movieColumn;
    @FXML
    public VBox removeMovieForm;

    // add movie

    private final CashierService cashierService;
    private final ManagerService managerService;
    private List<MovieCategory> movieCategories;
    private ObservableList<Movie> movies;
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
    @FXML
    public Button addMovieBtn;
    @FXML
    public Button removeMovieBtn;
    @FXML
    public VBox addMovieForm;



    @FXML
    public void toggleAddMovie(){
        removeMovieForm.setManaged(false);
        removeMovieForm.setVisible(false);
        addMovieForm.setManaged(true);
        addMovieForm.setVisible(true);
    }
    @FXML
    public void toggleRemoveMovie(){
        addMovieForm.setManaged(false);
        addMovieForm.setVisible(false);
        removeMovieForm.setManaged(true);
        removeMovieForm.setVisible(true);
    }

    @FXML
    public void submitAddingMovie(){
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
    public void submitDeletingMovie() {
        Movie movieToDelete = movies.stream().filter(movie -> (movie.getTitle().equals(currentMovieTitleToRemove.getValue()))).findAny().get();
        managerService.removeMovie(movieToDelete);
        movies.remove(movieToDelete);
    }

    @FXML
    private void initialize(){
        setUpCategories();
        setUpDurationSpinner();
        setUpPremierDatePicker();
        setUpAgeRestrictionComboBox();

        setUpMovieTable();
    }

    public ManagerMovieViewController(CashierService cashierService, ManagerService managerService) {
        this.cashierService = cashierService;
        this.managerService = managerService;
        currentMovieTitleToRemove = new SimpleStringProperty();
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
        valueFactory = new SpinnerValueFactory.IntegerSpinnerValueFactory(1,300, 100);
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
            errorMsg += "\t\t Director field needs name and surname of director!";
        }
        if(description.isBlank() || description.length() > 255){
            errorMsg += "\t\t Description field cannot be blank and max length is 255!";
        }
        if(categories.isEmpty()){
            errorMsg += "\t\t At least one category is required!";
        }
        if(ageRestriction.equals("not specified")){
            errorMsg += "\t\t Age restriction is not specified!";
        }
        if(posterURL.isBlank()){
            errorMsg += "\t\t Poster URL field is required!";
        }

        addMovieErrorPrompt.setText(errorMsg);

        return addMovieErrorPrompt.getText().isBlank();
    }

    public void setUpMovieTable(){
        movieColumn.setCellValueFactory(new PropertyValueFactory<>("title"));
        movieTable.setItems(movies);

        movieTable.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) ->
        {
            if(oldValue == null){
                deleteMovieConfirmation.setVisible(true);
                deleteMovieConfirmation.setManaged(true);
            }
            if(newValue == null){
                deleteMovieConfirmation.setVisible(false);
                deleteMovieConfirmation.setManaged(false);
            }else{
                currentMovieTitleToRemove.setValue(newValue.getTitle());
                titleToDelete.textProperty().bind(currentMovieTitleToRemove);
            }
        } );
    }


}
