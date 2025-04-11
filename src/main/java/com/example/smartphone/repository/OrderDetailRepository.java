package com.example.smartphone.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.smartphone.domain.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {

}
