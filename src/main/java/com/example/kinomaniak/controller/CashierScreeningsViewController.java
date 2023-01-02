package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.*;
import com.example.kinomaniak.service.CashierService;
import javafx.beans.Observable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.VBox;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

import java.sql.RowId;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

@Component
@FxmlView("CashierScreeningsView.fxml")
public class CashierScreeningsViewController {

    private final CashierService cashierService;

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
    private TableColumn<FilmShow, Hall> sumSeatsColumn;

    @FXML
    private Button toggleFiltersButton;
    @FXML
    private VBox filtersVBox;
    @FXML
    private TextField searchTextField;


    private final FxWeaver fxWeaver;

    private ObservableList<FilmShow> filmShows;
    private ObservableList<Movie> movies;
    private HashMap<Integer, ArrayList<Integer>> seats = new HashMap<>();
    private ObservableList<Hall> halls;
    private ObservableList<Ticket> tickets;


    public CashierScreeningsViewController(CashierService cashierService, FxWeaver fxWeaver) {
        this.cashierService = cashierService;
        this.fxWeaver = fxWeaver;
    }

    @FXML
    private void initialize(){
        loadData();

        createFilmShowTable();
        setColumnsWidthPercentage();
        searchTextField.textProperty().addListener(title-> filmShowTable.setItems(filter()));

    }

    public void loadData(){
        this.filmShows =this.cashierService.getFilmShows();
        this.movies = this.cashierService.getMovies();
        this.halls = this.cashierService.getHalls();

        this.filmShows = FXCollections.observableList(filmShows
                .stream()
                .filter(filmshow -> ZonedDateTime.now().isBefore(filmshow.getDate()))
                .collect(Collectors.toList()));

        for(int i=0; i < filmShows.size(); i++){
            FilmShow show = filmShows.get(i);
            Integer hallId = show.getHall().getId();
            ArrayList<Integer> seatsShow = new ArrayList<>();
            for(int j=0 ; j<halls.get(hallId).getCapacity(); j++ ){
                seatsShow.add(j+1);
            }

            seats.put(show.getId(), seatsShow);
//            System.out.println(seatsShow.size());
        }
    }

    public void createFilmShowTable() {
        Integer cos = 0;
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
        sumSeatsColumn.setCellValueFactory(new PropertyValueFactory<>("hall"));
        sumSeatsColumn.setCellFactory(column -> new TableCell<>() {
            @Override
            public void updateItem(Hall hall, boolean empty) {
                super.updateItem(hall, empty);
                if (empty || hall == null) {
                    setText("");
                } else {
                    setText(String.valueOf(hall.getCapacity() - cos));
                }
            }
        });

        filmShowTable.setItems(filmShows);

//        cos@cos.pl
//        razdwa34
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
                .collect(Collectors.toList()));

    }

    public void toggleFilters() {
        filtersVBox.setManaged(!filtersVBox.managedProperty().getValue());
        filtersVBox.setVisible(!filtersVBox.visibleProperty().getValue());
    }

    @FXML
    private void resetFilters(){
        searchTextField.setText("");
    }

    @FXML
    private void removeSelection() {
        filmShowTable.getSelectionModel().clearSelection();
    }
}
