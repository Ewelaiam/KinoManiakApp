package com.example.kinomaniak.model;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class MovieCategory {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    private String categoryName;

    public MovieCategory(){}


}
