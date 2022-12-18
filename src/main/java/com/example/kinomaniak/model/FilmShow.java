package com.example.kinomaniak.model;

import javax.persistence.*;
import java.time.ZonedDateTime;
import java.util.HashSet;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class FilmShow {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    @ManyToOne
    private Hall hall;

    @ManyToOne
    private Movie movie;

    private ZonedDateTime date;

    private Double ticketPrice;

    private Boolean withSubtitles;
    private Boolean is3D;

    public FilmShow(){}

    public FilmShow(Hall hall, Movie movie, ZonedDateTime date, Double ticketPrice,Boolean withSubtitles,Boolean is3D){
        this.hall = hall;
        this.movie = movie;
        this.date = date;
        this.ticketPrice = ticketPrice;
        this.withSubtitles = withSubtitles;
        this.is3D = is3D;
    }

    public Integer getId() {
        return id;
    }

    public Hall getHall() {
        return hall;
    }

    public Movie getMovie() {
        return movie;
    }

    public ZonedDateTime getDate() {
        return date;
    }

    public Double getTicketPrice() {
        return ticketPrice;
    }

    public Boolean getWithSubtitles() {
        return withSubtitles;
    }

    public Boolean getIs3D() {
        return is3D;
    }
}
