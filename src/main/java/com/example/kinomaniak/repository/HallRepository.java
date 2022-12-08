package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Hall;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HallRepository extends JpaRepository<Hall,Integer> {
}


