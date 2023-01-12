package com.example.kinomaniak.model;

import javax.persistence.*;

import java.time.ZonedDateTime;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Ticket {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name="ID_FILMSHOW")
    private FilmShow filmShow;

    @ManyToOne
    @JoinColumn(name="ID_EMPLOYEE")
    private Employee employee;

    private Integer seatNo;

    private ZonedDateTime purchaseDate;

    public Ticket() {}

    public Ticket(FilmShow filmShow, Employee employee, Integer seatNo){
        this.filmShow = filmShow;
        this.employee = employee;
        this.seatNo = seatNo;
        this.purchaseDate = ZonedDateTime.now();
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

    public ZonedDateTime getPurchaseDate() { return purchaseDate; }


}
