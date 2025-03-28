package com.example.smartphone.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.smartphone.domain.Product;
import com.example.smartphone.service.ProductService;

@Controller
public class ItemController {
    private final ProductService productService;

    public ItemController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/{id}")
    public String getMethodName(@PathVariable Long id, Model model) {
        Product product = this.productService.handleProductById(id);
        model.addAttribute("product", product);
        return "client/product-detail";
    }
}
