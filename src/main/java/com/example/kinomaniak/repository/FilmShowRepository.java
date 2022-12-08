package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.FilmShow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmShowRepository extends JpaRepository<FilmShow, Integer> {
}
