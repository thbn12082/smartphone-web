package com.example.smartphone.domain.DTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductCriterialDTO {
    private String page;
    private String name;
    private String factory;
    private String target;
    private String price;
    private String sort;
}