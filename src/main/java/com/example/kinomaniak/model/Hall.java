package com.example.kinomaniak.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Hall {
    @Id
    @GeneratedValue
    private Integer id;

    private Integer hallNo;

    private Integer capacity;

    public Hall(){
    }
}
