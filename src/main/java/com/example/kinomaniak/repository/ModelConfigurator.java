package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.FilmShow;
import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.Optional;

@Configuration
public class ModelConfigurator {
    @Bean
    CommandLineRunner commandLineRunner(HallRepository hallRepository,
                                        FilmShowRepository filmShowRepository,
                                        MovieRepository movieRepository,
                                        MovieCategoryRepository movieCategoryRepository,
                                        RoleRepository roleRepository,
                                        TicketRepository ticketRepository,
                                        EmployeeRepository employeeRepository) {
        return args -> {
            if(filmShowRepository.findAll().size() == 0){
                System.out.println("no films");
                Optional<Movie> movieOptional = movieRepository.findMovieByTitle("Inception");
                Optional<Hall> hallOptional = hallRepository.findHallByHallNo(1);
                if(movieOptional.isPresent() && hallOptional.isPresent()){
                    FilmShow show = new FilmShow(hallOptional.get(),movieOptional.get(), ZonedDateTime.now(),12.99,true,false);
                    filmShowRepository.save(show);
                    System.out.println("found");
                }
            }
//            Optional<Movie> movieOptional = movieRepository.findMovieByTitle("Schindler's List");
//            movieOptional.ifPresent(movie -> movie.getCategories().stream().map(MovieCategory::getCategoryName).forEach(System.out::println));


        };
    }
}
