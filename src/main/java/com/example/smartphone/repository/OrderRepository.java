package com.example.smartphone.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.domain.PageRequest;

import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.User;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findByUser(User user);

    Page<Order> findAll(Pageable pageable);

 
}
