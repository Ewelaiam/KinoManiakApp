package com.example.kinomaniak.configurator;
import com.example.kinomaniak.model.FilmShow;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.repository.FilmShowRepository;

import com.example.kinomaniak.repository.HallRepository;
import com.example.kinomaniak.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.lang.reflect.Array;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;


@Order(2)
@Component
public class FilmShowConfigurator implements CommandLineRunner {
    private final FilmShowRepository filmShowRepository;
    private final HallRepository hallRepository;
    private final MovieRepository movieRepository;
    @Autowired
    FilmShowConfigurator(FilmShowRepository filmShowRepository, HallRepository hallRepository,
                         MovieRepository movieRepository){
        this.filmShowRepository = filmShowRepository;
        this.hallRepository = hallRepository;
        this.movieRepository = movieRepository;
    }

    @Override
    public void run(String... args) throws Exception {
//        if(filmShowRepository.findAll().size() == 0){
//            List<Hall> halls = hallRepository.findAll();
//            List<Movie> movies = movieRepository.findAll();
//            ZonedDateTime date = ZonedDateTime.of(LocalDate.now(), LocalTime.MIDNIGHT, ZoneId.systemDefault());
//            List<FilmShow> filmShows = new ArrayList<>();
//
//            Random random = new Random();
//            for(Hall hall:halls){
//                for(int addDay=8;addDay<14;addDay++){
//                    ZonedDateTime movieStartDate = date.plusDays(addDay).plusHours(8);
//                    while(movieStartDate.getHour() >= 8){
//                        Movie movie = movies.get(random.nextInt(movies.size()));
//                        boolean is3D = random.nextBoolean();
//                        boolean withSubtitles = random.nextBoolean();
//                        double ticketPrice = (double)random.nextInt(1000,2000)/100;
//
//                        FilmShow filmShow = new FilmShow(hall,movie,movieStartDate,ticketPrice,withSubtitles,is3D);
//                        filmShows.add(filmShow);
//                        movieStartDate = movieStartDate.plusMinutes(movie.getDuration()).plusMinutes(30);
//                    }
//                }
//            }
//            filmShowRepository.saveAll(filmShows);
//            System.out.println(filmShows.size());
//
//        }
    }
}