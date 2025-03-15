package com.example.smartphone.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Product;
import com.example.smartphone.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void handleSaveProduct(Product product) {
        this.productRepository.save(product);
    }

    public List<Product> handleAllProduct() {
        return this.productRepository.findAll();
    }

    public Product handleProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void handleDelProduct(long id) {
        this.productRepository.delete(this.productRepository.findById(id));
    }

}
