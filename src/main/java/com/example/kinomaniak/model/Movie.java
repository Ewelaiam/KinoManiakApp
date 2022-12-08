package com.example.kinomaniak.model;


import javax.persistence.*;

import com.example.kinomaniak.model.MovieCategory;

import java.time.LocalDate;

@Entity
public class Movie {
    @GeneratedValue
    @Id
    private Integer id;
    private String title;
    private String director;
    private String description;
    @ManyToOne
    private MovieCategory category;
    private Integer duration;
    private LocalDate premierDate;
    private Integer ageRestriction;
    public Movie(){}

}
