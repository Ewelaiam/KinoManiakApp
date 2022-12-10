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

    public Ticket(FilmShow filmShow, Employee employee, Integer seatNo){
        this.filmShow = filmShow;
        this.employee = employee;
        this.seatNo = seatNo;
    }

    public Integer getId() {
        return id;
    }

    public FilmShow getFilmShow() {
        return filmShow;
    }

    public Employee getEmployee() {
        return employee;
    }

    public Integer getSeatNo() {
        return seatNo;
    }


}
