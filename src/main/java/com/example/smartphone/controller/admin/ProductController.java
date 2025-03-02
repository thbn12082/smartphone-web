package com.example.smartphone.controller.admin;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.smartphone.domain.Product;
import com.example.smartphone.service.ProductService;
import com.example.smartphone.service.UploadService;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductController {
    private final UploadService uploadService;
    private final ProductService productService;

    public ProductController(UploadService uploadService, ProductService productService) {
        this.uploadService = uploadService;
        this.productService = productService;
    }

    @GetMapping("/admin/product")
    public String getProduct(Model model) {
        model.addAttribute("products", this.productService.handleAllProduct());
        return "admin/product/show-product";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProduct(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create-product";
    }

    @PostMapping("/admin/product/create")
    public String postCreateProduct(@ModelAttribute("newProduct") Product product,
            @RequestParam("thebinhFile") MultipartFile file) throws IOException {
        String nameImage = this.uploadService.handleSaveUploadFile(file, "product");
        product.setImage(nameImage);
        this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

}
