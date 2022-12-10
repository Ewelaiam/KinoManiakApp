package com.example.kinomaniak.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Hall {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    private Integer hallNo;

    private Integer capacity;

    public Hall(){
    }

    public Hall(Integer hallNo, Integer capacity){
        this.hallNo = hallNo;
        this.capacity = capacity;
    }

    public Integer getId() {
        return id;
    }

    public Integer getHallNo() {
        return hallNo;
    }

    public Integer getCapacity() {
        return capacity;
    }
}
