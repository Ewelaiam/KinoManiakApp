package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Hall;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

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
            Hall kowalski = new Hall();
            hallRepository.save(kowalski);
        };
    }
}
