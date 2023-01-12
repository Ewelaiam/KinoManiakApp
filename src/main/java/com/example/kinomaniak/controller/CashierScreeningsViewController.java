package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.*;
import com.example.kinomaniak.service.AuthService;
import com.example.kinomaniak.service.CashierService;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.TilePane;
import javafx.scene.layout.VBox;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

import java.time.ZonedDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Component
@FxmlView("cashierScreeningsView.fxml")
public class CashierScreeningsViewController {

    private final CashierService cashierService;
    private final AuthService authService;

    @FXML
    private TableView<FilmShow> filmShowTable;
    @FXML
    private TableColumn<FilmShow, Movie> movieColumn;
    @FXML
    private TableColumn<FilmShow, ZonedDateTime> dateColumn;
    @FXML
    private TableColumn<FilmShow, Boolean> is3dColumn;
    @FXML
    private TableColumn<FilmShow, Boolean> subtitlesColumn;
    @FXML
    private TableColumn<FilmShow, Hall> hallIdColumn;
    @FXML
    private TableColumn<FilmShow, Integer> sumSeatsColumn;

    @FXML
    private Button toggleFiltersButton;
    @FXML
    private VBox filtersVBox;
    @FXML
    private TextField searchTextField;
    @FXML
    private BorderPane bottomPane;
    @FXML
    private Label priceLabel;
    @FXML
    private Label titleLabel;
    @FXML
    private ScrollPane seatsScrollPane = new ScrollPane();
    @FXML
    private TilePane seatsTilePane = new TilePane();
    @FXML
    private ComboBox<String> hallComboBox;


    private final FxWeaver fxWeaver;

    private ObservableList<FilmShow> filmShows;
    private ObservableList<Movie> movies;
    private HashMap<Integer, Set<Integer>> seats = new HashMap<>();
    private List<Hall> halls;
    private ObservableList<Ticket> tickets;
    private FilmShow currFilmShow;


    public CashierScreeningsViewController(CashierService cashierService, AuthService authService, FxWeaver fxWeaver) {
        this.cashierService = cashierService;
        this.authService = authService;
        this.fxWeaver = fxWeaver;
    }

    @FXML
    private void initialize(){
        loadData();

        createFilmShowTable();
        setColumnsWidthPercentage();
        setUpHallComboBox();
        searchTextField.textProperty().addListener(title-> filmShowTable.setItems(filter()));

    }

    public void loadData(){
        this.filmShows =this.cashierService.getFilmShows();
        this.movies = this.cashierService.getMovies();
        this.tickets = this.cashierService.getTickets();

        this.filmShows = FXCollections.observableList(filmShows
                .stream()
                .filter(filmshow -> ZonedDateTime.now().isBefore(filmshow.getDate()))
                .collect(Collectors.toList()));

        this.tickets = FXCollections.observableList(tickets
                .stream()
                .filter(ticket -> ZonedDateTime.now().isBefore(ticket.getFilmShow().getDate()))
                .collect(Collectors.toList()));

        for(int i=0; i < filmShows.size(); i++){
            FilmShow show = filmShows.get(i);
            Set<Integer> seatsShow = new HashSet<Integer>();
            for(int j=0 ; j<show.getHall().getCapacity(); j++ ){
                seatsShow.add(j+1);
            }

            seats.put(show.getId(), seatsShow);
        }
        for(Ticket ticket: this.tickets){
            seats.get(ticket.getFilmShow().getId()).remove(ticket.getSeatNo());
        }
    }

    public void createFilmShowTable() {
        filmShowTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);

        movieColumn.setCellValueFactory(new PropertyValueFactory<>("movie"));
        movieColumn.setCellFactory(column -> new TableCell<>() {
            @Override
            public void updateItem(Movie movie, boolean empty) {
                super.updateItem(movie, empty);
                if (empty || movie == null) {
                    setText("");
                } else {
                    setText(movie.getTitle());
                }
            }
        });
        dateColumn.setCellValueFactory(new PropertyValueFactory<>("date"));
        dateColumn.setCellFactory(column -> new TableCell<>() {
            @Override
            public void updateItem(ZonedDateTime date, boolean empty) {
                super.updateItem(date, empty);
                if (empty || date == null) {
                    setText("");
                } else {
                    String tmp = date.toString();
                    String res = tmp.substring(0, 10) + "   " + tmp.substring(11, 16);
                    setText(res);
                }
            }
        });
        is3dColumn.setCellValueFactory(new PropertyValueFactory<>("is3D"));
        subtitlesColumn.setCellValueFactory(new PropertyValueFactory<>("withSubtitles"));
        hallIdColumn.setCellValueFactory(new PropertyValueFactory<>("hall"));
        hallIdColumn.setCellFactory(column -> new TableCell<>() {
            @Override
            public void updateItem(Hall hall, boolean empty) {
                super.updateItem(hall, empty);
                if (empty || hall == null) {
                    setText("");
                } else {
                    setText(hall.getHallNo().toString());
                }
            }
        });
        sumSeatsColumn.setCellValueFactory(new PropertyValueFactory<>("id"));
        sumSeatsColumn.setCellFactory(column -> new TableCell<>() {
            @Override
            public void updateItem(Integer id, boolean empty) {
                super.updateItem(id, empty);
                if (empty || id == null) {
                    setText("");
                } else {
                    setText(String.valueOf(seats.get(id).size()));
                }
            }
        });

        filmShowTable.setItems(filmShows);

        filmShowTable.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) ->
        {
            if(oldValue == null){
                filmShowTable.setPrefHeight(filmShowTable.getPrefHeight() - 100.0);
                bottomPane.setPrefHeight(bottomPane.getPrefHeight()+ 100.0);
                bottomPane.setVisible(true);
                bottomPane.setManaged(true);
            }

            if(newValue == null){
                filmShowTable.setPrefHeight(filmShowTable.getPrefHeight() + 100.0);
                bottomPane.setPrefHeight(bottomPane.getPrefHeight() - 100.0);
                bottomPane.setVisible(false);
                bottomPane.setManaged(false);
            }else{
                titleLabel.textProperty().bind(new SimpleStringProperty(newValue.getMovie().getTitle()));
                priceLabel.textProperty().bind(new SimpleStringProperty(String.valueOf(newValue.getTicketPrice()) + " zł"));

                this.currFilmShow = newValue;
                this.seatsTilePane = new TilePane();
                for(Integer inti : seats.get(newValue.getId())){
                    CheckBox checkBox = new CheckBox(String.valueOf(inti));
                    checkBox.setPrefWidth(75);
                    this.seatsTilePane.getChildren().add(checkBox);

                }
                seatsScrollPane.setContent(this.seatsTilePane);
            }
        } );
    }

    @FXML
    private void buyTickets(){
        filmShowTable.setPrefHeight(filmShowTable.getPrefHeight() + 100.0);
        bottomPane.setPrefHeight(bottomPane.getPrefHeight() - 100.0);
        ArrayList<Integer> seatsNumbers = new ArrayList<Integer>();

        for (Node seat : seatsTilePane.getChildren()){
            CheckBox checkBox = (CheckBox) seat;
            if (checkBox.isSelected()){
                seatsNumbers.add(Integer.valueOf(checkBox.getText()));
            }
        }

        for(Integer seat: seatsNumbers){
            this.cashierService.reserveTicketsForGivenFilm(currFilmShow, authService.getCurrentlyLoggedEmployee(), seat);
        }
        initialize();
    }

    private void setUpHallComboBox() {
        this.halls = cashierService.getHalls();
        if(this.hallComboBox.getItems().size() == 0){
            this.hallComboBox.getItems().add("not specified");
            this.hallComboBox.getItems().addAll((halls.stream().map(Hall::getHallNo).sorted().map(String::valueOf)).toList());
            this.hallComboBox.getSelectionModel().selectFirst();
            hallComboBox.valueProperty().addListener(genre-> filmShowTable.setItems(filter()));
        }

    }

    private void setColumnsWidthPercentage() {
        movieColumn.prefWidthProperty().bind(filmShowTable.widthProperty().multiply(0.3));
        dateColumn.prefWidthProperty().bind(filmShowTable.widthProperty().multiply(0.2));
        is3dColumn.prefWidthProperty().bind(filmShowTable.widthProperty().multiply(0.1));
        subtitlesColumn.prefWidthProperty().bind(filmShowTable.widthProperty().multiply(0.1));
        hallIdColumn.prefWidthProperty().bind(filmShowTable.widthProperty().multiply(0.1));
        sumSeatsColumn.prefWidthProperty().bind(filmShowTable.widthProperty().multiply(0.15));
    }

    private ObservableList<FilmShow> filter() {
        removeSelection();
        List<String> filteredMovies =  FXCollections.observableList(movies
                .stream()
                .map(Movie::getTitle)
                .filter(title -> title.toLowerCase().contains(searchTextField.getText().toLowerCase()))
                .toList());

        return FXCollections.observableList(filmShows
                .stream()
                .filter(filmshow -> filteredMovies.contains(filmshow.getMovie().getTitle()))
                .filter(filmShow -> {
                    if(hallComboBox.getValue().equals("not specified"))
                        return true;
                    return filmShow.getHall().getHallNo().equals(Integer.valueOf(hallComboBox.getValue()));
                })
                .collect(Collectors.toList()));

    }

    public void toggleFilters() {
        filtersVBox.setManaged(!filtersVBox.managedProperty().getValue());
        filtersVBox.setVisible(!filtersVBox.visibleProperty().getValue());
    }

    @FXML
    private void resetFilters(){

        searchTextField.setText("");
        hallComboBox.getSelectionModel().selectFirst();
    }

    @FXML
    private void removeSelection() {
        filmShowTable.getSelectionModel().clearSelection();
    }

    public void searchMovieTitle(String movieTitle){
        searchTextField.setText(movieTitle);
    }

    public void searchHallNo(int hallNo){
        hallComboBox.getSelectionModel().select(String.valueOf(hallNo));
    }
}
