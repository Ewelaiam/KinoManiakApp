package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.MovieCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieCategoryRepository extends JpaRepository<MovieCategory, Integer> {
}
