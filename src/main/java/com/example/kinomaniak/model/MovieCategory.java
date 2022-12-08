package com.example.kinomaniak.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class MovieCategory {
    @Id
    @GeneratedValue
    private Integer id;

    private String categoryName;

    public MovieCategory(){}


}
