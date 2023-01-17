package com.example.kinomaniak.service;

import com.example.kinomaniak.model.*;
import com.example.kinomaniak.repository.EmployeeRepository;
import com.example.kinomaniak.repository.FilmShowRepository;
import com.example.kinomaniak.repository.RoleRepository;
import com.example.kinomaniak.repository.TicketRepository;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class AdminService {
    private final EmployeeRepository employeeRepository;
    private final TicketRepository ticketRepository;
    private final FilmShowRepository filmShowRepository;
    private final RoleRepository roleRepository;
    private final MailSendingService mailSendingService;

    public AdminService(EmployeeRepository employeeRepository, TicketRepository ticketRepository,
                        FilmShowRepository filmShowRepository,RoleRepository roleRepository,
                        MailSendingService mailSendingService) {
        this.employeeRepository = employeeRepository;
        this.ticketRepository = ticketRepository;
        this.filmShowRepository = filmShowRepository;
        this.roleRepository = roleRepository;
        this.mailSendingService = mailSendingService;
    }

    public ObservableList<Employee> getEmployees(){
        return FXCollections.observableList(employeeRepository.findAll());
    }
    public ObservableList<Role> getRoles(){
        return FXCollections.observableList(roleRepository.findAll());
    }

    public void deleteEmployee(Employee employee) {
        for (Employee employeeToNotify : getEmployees()){
            if (Objects.equals(employeeToNotify.getMail(), employee.getMail())){
                System.out.println("dupa");
                mailSendingService.sendEmail(employee.getMail(), "Job dismissal",
                        "Unfortunately, you have been fired from your position in KinoManiak Cinemas." +
                                "You should've tried harder and now you're jobless ://");
            } else {
//                mailSendingService.sendEmail(employee.getMail(), "Job dismissal of your colleague",
//                        "Unfortunately, one of your colleagues, " + employee.getName() + " " + employee.getSurName() +
//                                ", have been fired from your position in KinoManiak Cinemas." +
//                                "For now you are safe, but you had better work harder, or else...");
            }
        }
        employeeRepository.delete(employee);
    }

    public void saveEditedEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    public Optional<Role> getRoleWithName(String name) {
        return roleRepository.findByRoleName(name);
    }
    public boolean employeeSoldTickets(Employee employee){
        return ticketRepository.getNoSoldTickets(employee) > 0;
    }
}
