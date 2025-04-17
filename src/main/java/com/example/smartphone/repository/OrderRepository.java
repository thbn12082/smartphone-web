package com.example.smartphone.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.User;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findByUser(User user);
}
