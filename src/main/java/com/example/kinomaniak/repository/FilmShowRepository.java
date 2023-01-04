package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.FilmShow;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.NamedNativeQuery;
import java.time.ZonedDateTime;
import java.util.Optional;

@Repository
public interface FilmShowRepository extends JpaRepository<FilmShow, Integer> {

    @Query(value = "SELECT TOP 1 * FROM FilmShow f GROUP BY f.Hall ORDER BY COUNT(f) DESC", nativeQuery = true)
    Optional<FilmShow> findTheOftenChosenHallForEvents();

    Optional<FilmShow> findFilmShowByDate(ZonedDateTime time);

    Optional<FilmShow> findFilmShowByDateAndHall(ZonedDateTime time, Hall hall);

    @Query(value = "SELECT count(*) from film_show as f where f.movie_id = :#{#movie.id} ",nativeQuery = true)
    int getNoFilmShows(@Param("movie") Movie movie);
}
