package com.example.smartphone.domain;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotEmpty(message = "name khong duoc de trong")
    private String name;
    @NotNull
    @DecimalMin(value = "0", inclusive = false, message = "price phai lon hon 0")
    private double price;
    private String image;
    @NotEmpty(message = "detailDesc khong duoc de trong")
    @Column(columnDefinition = "TEXT")
    private String detailDesc;
    @NotEmpty(message = "shortDesc khong duoc de trong")
    @Column(columnDefinition = "TEXT")
    // chip nhan cpu
    private String shortDesc;
    @NotNull
    @DecimalMin(value = "1", inclusive = true, message = "quantity phai lon hon 1")
    private long quantity;
    private long sold;

    private String factory;
    private String target;

    @OneToMany(mappedBy = "product")
    List<OrderDetail> orderDetails;

    @OneToMany(mappedBy = "product")
    private List<CartDetail> cartDetails;
}