package com.example.kinomaniak.configurator;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.repository.HallRepository;

import org.springframework.context.annotation.Configuration;


import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;


import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;


import com.fasterxml.jackson.databind.ObjectMapper;

@Configuration
public class HallConfigurator {


    @Bean
    CommandLineRunner commandLineRunner(HallRepository hallRepository) {
        return args -> {
            if(hallRepository.findAll().size() > 0){
                hallRepository.deleteAll();
            }
            String file = "src/main/resources/com/example/kinomaniak/hall_config.json";
            String json = new String(Files.readAllBytes(Paths.get(file)));

            ObjectMapper objectMapper = new ObjectMapper();
            Hall[] halls = objectMapper.readValue(json, Hall[].class);
            hallRepository.saveAll(Arrays.asList(halls));

        };
    }
}