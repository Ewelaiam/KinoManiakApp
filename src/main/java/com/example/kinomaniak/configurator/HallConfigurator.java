package com.example.kinomaniak.configurator;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.repository.HallRepository;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.boot.CommandLineRunner;
;


import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;


import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
@Order(1)
@Component
public class HallConfigurator implements CommandLineRunner {
    private final HallRepository hallRepository;
    @Autowired
    HallConfigurator(HallRepository hallRepository){
        this.hallRepository = hallRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        if(hallRepository.findAll().size() == 0){
            String file = "src/main/resources/com/example/kinomaniak/hall_config.json";
            String json = new String(Files.readAllBytes(Paths.get(file)));

            ObjectMapper objectMapper = new ObjectMapper();
            Hall[] halls = objectMapper.readValue(json, Hall[].class);
            hallRepository.saveAll(Arrays.asList(halls));
        }
    }
}