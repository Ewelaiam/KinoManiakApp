package com.example.kinomaniak.model;

import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.HashSet;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Role {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer id;

    private String roleName;

    public Role() {}
}
