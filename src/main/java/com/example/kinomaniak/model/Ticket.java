package com.example.kinomaniak.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Ticket {

    @Id
    @GeneratedValue
    private Integer id;

    @ManyToOne
    private FilmShow filmShow;

    @ManyToOne
    private Employee employee;

    private Integer seatNo;

    public Ticket() {}
}
