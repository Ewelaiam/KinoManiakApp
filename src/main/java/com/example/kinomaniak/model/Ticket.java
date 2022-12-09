package com.example.kinomaniak.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Ticket {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    @ManyToOne
    private FilmShow filmShow;

    @ManyToOne
    private Employee employee;

    private Integer seatNo;

    public Ticket() {}
}
