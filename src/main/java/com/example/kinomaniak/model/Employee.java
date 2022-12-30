package com.example.kinomaniak.model;

import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;


import java.util.HashSet;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Employee {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    @ManyToOne
    private Role role;

    private String name;

    private String surName;

    private String mail;

    private String password;

    public Employee() {}

    public Employee(Role role, String mail, String password, String name, String surname) {
        this.role = role;
        this.name = name;
        this.surName = surname;
        this.mail = mail;
        this.password = password;
    }

    public Employee(String mail, String password) {
        this.mail = mail;
        this.password = password;
    }


    public Employee(String mail, String password, String name, String surname) {
        this.mail = mail;
        this.password = password;
        this.name = name;
        this.surName = surname;
    }
    public Integer getId() {
        return id;
    }

    public Role getRole() {
        return role;
    }

    public String getName() {
        return name;
    }

    public String getSurName() {
        return surName;
    }

    public String getMail() {
        return mail;

    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
}
