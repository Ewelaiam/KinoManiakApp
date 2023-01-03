package com.example.kinomaniak.repository;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TicketRepository extends JpaRepository<Ticket, Integer> {

    @Query(value = "SELECT TOP 1 * FROM Ticket t GROUP BY t.employee ORDER BY COUNT(t) DESC", nativeQuery = true)
    Optional<Ticket> findBestEmployee();

    @Query(value = "SELECT TOP 1 * FROM Ticket t GROUP BY t.filmShow ORDER BY COUNT(t) DESC", nativeQuery = true)
    Optional<Ticket> findBestMovie();

    @Query(value = "SELECT count(*) from ticket as t where t.employee_id = :#{#employee.id} ",nativeQuery = true)
    int getNoSoldTickets(@Param("employee") Employee employee);
}
