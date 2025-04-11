package com.example.smartphone.controller.admin;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.smartphone.domain.Product;
import com.example.smartphone.service.ProductService;
import com.example.smartphone.service.UploadService;

import jakarta.validation.Valid;

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
    public String postCreateProduct(@ModelAttribute("newProduct") @Valid Product product, BindingResult bindingResult,
            @RequestParam("thebinhFile") MultipartFile file) throws IOException {
        if (bindingResult.hasErrors()) {
            return "admin/product/create-product";
        }
        String nameImage = this.uploadService.handleSaveUploadFile(file, "product");
        product.setImage(nameImage);
        this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{id}")
    public String getProduct(@PathVariable Long id, Model model) {
        model.addAttribute("product", this.productService.handleProductById(id));
        System.out.println(this.productService.handleProductById(id).getImage());
        return "admin/product/product-detail";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdateProduct(@PathVariable Long id, Model model) {
        model.addAttribute("idProduct", id);
        model.addAttribute("newProduct", new Product());
        return "admin/product/update-product";
    }

    @PostMapping("/admin/product/update/{id}")
    public String postUpdateProduct(@ModelAttribute("newProduct") Product product, @PathVariable Long id) {

        return "";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteProduct(Model model, @PathVariable Long id) {
        model.addAttribute("productId", id);
        return "admin/product/delete-product";
    }

    @PostMapping("/admin/product/delete/{id}")
    public String postDeleteProduct(@PathVariable Long id) {
        this.productService.handleDelProduct(id);
        return "redirect:/admin/product";
    }

}
