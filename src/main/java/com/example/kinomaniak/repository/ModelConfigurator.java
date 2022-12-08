package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ModelConfigurator {
    @Bean
    CommandLineRunner commandLineRunner(HallRepository hallRepository,
                                        EventRepository eventRepository,
                                        MovieRepository movieRepository,
                                        MovieCategoryRepository movieCategoryRepository,
                                        RoleRepository roleRepository,
                                        TicketRepository ticketRepository,
                                        UserRepository userRepository) {
        return args -> {
            Hall kowalski = new Hall();
            hallRepository.save(kowalski);
        };
    }
}
