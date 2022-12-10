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

    public Employee(Role role, String name, String surName, String mail, String password) {
        this.role = role;
        this.name = name;
        this.surName = surName;
    }

    public Employee(String mail, String password) {
        this.mail = mail;
        this.password = password;
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

}
