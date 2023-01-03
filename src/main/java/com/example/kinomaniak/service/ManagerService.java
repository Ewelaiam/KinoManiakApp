package com.example.kinomaniak.service;

import com.example.kinomaniak.model.*;
import com.example.kinomaniak.repository.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.Optional;
import java.util.Set;

@Service
public class ManagerService {
    private final EmployeeRepository employeeRepository;
    private final FilmShowRepository filmShowRepository;
    private final MovieRepository movieRepository;
    private final HallRepository hallRepository;
    private final TicketRepository ticketRepository;

    @Autowired
    public ManagerService(EmployeeRepository employeeRepository, FilmShowRepository filmShowRepository, MovieRepository movieRepository, HallRepository hallRepository, TicketRepository ticketRepository) {
        this.employeeRepository = employeeRepository;
        this.filmShowRepository = filmShowRepository;
        this.movieRepository = movieRepository;
        this.hallRepository = hallRepository;
        this.ticketRepository = ticketRepository;
    }

    public FilmShow addFilmShow(Hall hall, Movie movie, ZonedDateTime date, Double ticketPrice,Boolean withSubtitles,Boolean is3D){
        FilmShow filmShow = new FilmShow(hall, movie, date, ticketPrice,withSubtitles,is3D);
        return filmShowRepository.save(filmShow);
    }

    public void removeFilmShow(FilmShow filmShow){ filmShowRepository.delete(filmShow); }

    public Movie addMovie(String title, String director, String description, Set<MovieCategory> categories, Integer duration, LocalDate premierDate, Integer ageRestriction, String posterURL){
        Movie movie = new Movie(title, director, description, duration, premierDate, ageRestriction,posterURL);
        for(MovieCategory category: categories){
            movie.addCategory(category);
        }
        return movieRepository.save(movie);
    }

    public void removeMovie(Movie movie){
        movieRepository.delete(movie);
    }

    public Hall addHall(Integer hallNo, Integer capacity){
        Hall hall = new Hall(hallNo, capacity);
        return hallRepository.save(hall);

    }

    public ObservableList<Hall> getHalls(){
        return FXCollections.observableList(hallRepository.findAll());
    }

    public Boolean existFilmShowWithGivenHallAndTime(Hall hall, ZonedDateTime time){
        Optional<FilmShow> filmShow = filmShowRepository.findFilmShowByDateAndHall(time, hall);
        return filmShow.isEmpty();
    }

    public ObservableList<FilmShow> getFilmShows(){
        return FXCollections.observableList(filmShowRepository.findAll());
    }

    public ObservableList<Ticket> getTickets(){
        return FXCollections.observableList(ticketRepository.findAll());
    }

}
