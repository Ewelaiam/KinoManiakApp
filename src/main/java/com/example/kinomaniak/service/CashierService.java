package com.example.kinomaniak.service;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.FilmShow;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.Ticket;
import com.example.kinomaniak.repository.EmployeeRepository;
import com.example.kinomaniak.repository.MovieRepository;
import com.example.kinomaniak.repository.TicketRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CashierService {
    private final TicketRepository ticketRepository;
    private final EmployeeRepository employeeRepository;

    private final MovieRepository movieRepository;

    public CashierService(TicketRepository ticketRepository, EmployeeRepository employeeRepository, MovieRepository movieRepository) {
        this.ticketRepository = ticketRepository;
        this.employeeRepository = employeeRepository;
        this.movieRepository = movieRepository;
    }

    public void changePassword(String mail, String password){
        Optional<Employee> employeeAccount = employeeRepository.findByMail(mail);
        employeeAccount.get().setPassword(password);
        employeeRepository.save(employeeAccount.get());
    }

    public Ticket reserveTicketsForGivenFilm(FilmShow filmShow, Employee employee, Integer seatNo) {
        Ticket ticket = new Ticket(filmShow, employee, seatNo);
        return ticketRepository.save(ticket);
    }

    public Optional<List<Movie>> findRecommendedMovies(){
        Page<Movie> page = movieRepository.findAll(PageRequest.of(0, 5, Sort.by(Sort.Order.asc("premierDate"))));
        return Optional.of(page.getContent());
    }

}
