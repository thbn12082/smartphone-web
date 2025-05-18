package com.example.smartphone.service.specification;

import java.util.List;


import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.Product_;

@Service
public class ProductSpecs {
    public static Specification<Product> nameLike(String name) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Product_.NAME), "%" + name + "%");
        // like bởi vì ứng với câu lệnh like trong sql
    }
    public static Specification<Product> minPrice(double minPrice){
        return (root, query, builder) -> builder.ge(root.get(Product_.PRICE), minPrice);
        //greater than or equal to
    }

    public static Specification<Product> maxPrice(double maxPrice){
        return (root, query, builder) -> builder.le(root.get(Product_.PRICE), maxPrice);
        //less than or equal to
    }
    public static Specification<Product> factoryNameEqual(String name){
        return (root, query, builder) -> builder.equal(root.get(Product_.NAME), name);
       // eaual
    }
    public static Specification<Product> factoryNameIn(List<String> factory){
        return (root, query, builder) -> builder.in(root.get(Product_.TARGET)).value(factory);
        //in
    }

    public static Specification<Product> matchPrice(double min, double max){
        // return (root, query, builder) -> builder.and(builder.ge(root.get(Product_.PRICE), min),
        //                                 builder.le(root.get(Product_.PRICE), max));
        //and + greater than or equals to + less than or equals to
        return (root, query, builder) -> builder.between(root.get(Product_.PRICE), min, max);
       // beetwen
    }

}
