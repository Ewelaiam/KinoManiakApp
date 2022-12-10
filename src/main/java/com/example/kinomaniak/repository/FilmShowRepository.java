package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.FilmShow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmShowRepository extends JpaRepository<FilmShow, Integer> {

    @Query(value = "SELECT TOP 1 * FROM FilmShow f GROUP BY f.Hall ORDER BY COUNT(f) DESC", nativeQuery = true)
    FilmShow findTheOftenChosenHallForEvents();
}
