package com.example.kinomaniak.model;

import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;


import java.util.HashSet;

@Entity
public class Employee {
    @Id
    @GeneratedValue
    private Integer id;

    @ManyToOne
    private Role role;

    private String name;

    private String surName;

    private String mail;

    private String password;

    public Employee() {}



}
