package com.example.kinomaniak.model;


import javax.persistence.*;

import com.example.kinomaniak.model.MovieCategory;

import java.net.URL;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Movie {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;
    private String title;
    private String director;
    private String description;
    @ManyToMany
    private final Set<MovieCategory> categories = new HashSet<>();
    private Integer duration;
    private LocalDate premierDate;
    private Integer ageRestriction;

    private String posterURL;

    private Boolean isRecommended;
    public Movie(){}

    public Movie(String title, String director, String description, Integer duration, LocalDate premierDate, Integer ageRestriction,String posterURL) {
        this.title = title;
        this.director = director;
        this.description = description;
        this.duration = duration;
        this.premierDate = premierDate;
        this.ageRestriction = ageRestriction;
        this.posterURL = posterURL;
        this.isRecommended = false;
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

    public Set<MovieCategory> getCategories() {
        return categories;
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

    public String getPosterURL() {
        return posterURL;
    }

    public Boolean getIsRecommended(){return isRecommended;}
    public void setIsRecommended(Boolean isRecommended){
        this.isRecommended = isRecommended;
    }

    public void addCategory(MovieCategory category){
        categories.add(category);
    }
}
