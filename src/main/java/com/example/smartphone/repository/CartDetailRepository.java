package com.example.smartphone.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.smartphone.domain.Cart;
import com.example.smartphone.domain.CartDetail;
import com.example.smartphone.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    boolean existsByCartAndProduct(Cart cart, Product product);

    // day la cau lenh dem xem trong db co cart_id, product_id hay khong
    CartDetail findByCartAndProduct(Cart cart, Product product);
}
