package com.example.kinomaniak.model;

import javax.persistence.*;
import java.time.ZonedDateTime;
import java.util.HashSet;

@Entity
public class FilmShow {

    @Id
    @GeneratedValue
    private Integer id;

    @ManyToOne
    private Hall hall;

    @ManyToOne
    private Movie movie;

    private ZonedDateTime date;

    private Double ticketPrice;

    public FilmShow(){}


    public void addTicket(){

    }

}
