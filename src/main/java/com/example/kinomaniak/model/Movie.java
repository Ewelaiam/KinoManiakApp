package com.example.kinomaniak.model;


import javax.persistence.*;

import com.example.kinomaniak.model.MovieCategory;

import java.time.LocalDate;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Movie {
    @GeneratedValue(strategy = IDENTITY)
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

    public Movie(String title, String director, String description, MovieCategory category, Integer duration, LocalDate premierDate, Integer ageRestriction) {
        this.title = title;
        this.director = director;
        this.description = description;
        this.category = category;
        this.duration = duration;
        this.premierDate = premierDate;
        this.ageRestriction = ageRestriction;
    }

    public Integer getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDirector() {
        return director;
    }

    public String getDescription() {
        return description;
    }

    public MovieCategory getCategory() {
        return category;
    }

    public Integer getDuration() {
        return duration;
    }

    public LocalDate getPremierDate() {
        return premierDate;
    }

    public Integer getAgeRestriction() {
        return ageRestriction;
    }
}
