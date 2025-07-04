package com.example.smartphone.controller.admin;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.smartphone.domain.Product;
import com.example.smartphone.service.ProductService;
import com.example.smartphone.service.UploadService;

import jakarta.validation.Valid;

@Controller
public class ProductController {
    private final UploadService uploadService;
    private final ProductService productService;

    public ProductController(UploadService uploadService, ProductService productService) {
        this.uploadService = uploadService;
        this.productService = productService;
    }

    @GetMapping("/admin/product")
    public String getProduct(Model model,
            @RequestParam("page") Optional<String> pageOptional,
            @RequestParam(value = "keyword", required = false) String keyword) {
        int page = 1;
        if (pageOptional.isPresent()) {
            try {
                page = Integer.parseInt(pageOptional.get());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Pageable pageable = PageRequest.of(page - 1, 10);
        Page<Product> pg;
        ///
        if (keyword != null && !keyword.trim().isEmpty()) {
            pg = this.productService.searchProductsByKeyword(keyword, pageable);
            model.addAttribute("keyword", keyword);
        } else {
            pg = this.productService.handleAllProduct(pageable);
        }
        //
        List<Product> lsPr = pg.getContent();
        model.addAttribute("products", lsPr);
        model.addAttribute("currentPage", page);
        int totalPages = (pg.getTotalPages() == 0 ? 1 : pg.getTotalPages());
        model.addAttribute("totalPages", totalPages);
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

        // In các trường cụ thể để tránh gọi toString()
        System.out.println("---------------------------------------------------------");
        System.out.println("Product ID: " + product.getId());
        System.out.println("Product Name: " + product.getName());
        System.out.println("Product Price: " + product.getPrice());
        System.out.println("Product Image: " + product.getImage());
        System.out.println("Product DetailDesc: " + product.getDetailDesc());
        System.out.println("Product ShortDesc: " + product.getShortDesc());
        System.out.println("Product Quantity: " + product.getQuantity());
        System.out.println("Product Target: " + product.getTarget());
        System.out.println("Product Factory: " + product.getFactory());
        System.out.println("Product Sold: " + product.getSold());
        System.out.println("---------------------------------------------------------");

        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{id}")
    public String getProduct(@PathVariable Long id, Model model) {
        Product product = this.productService.handleProductById(id);
        model.addAttribute("product", product);
        // In các trường cụ thể
        System.out.println("---------------------------------------------------------");
        System.out.println("Product ID: " + product.getId());
        System.out.println("Product Name: " + product.getName());
        System.out.println("Product Price: " + product.getPrice());
        System.out.println("Product Image: " + product.getImage());
        System.out.println("Product DetailDesc: " + product.getDetailDesc());
        System.out.println("Product ShortDesc: " + product.getShortDesc());
        System.out.println("Product Quantity: " + product.getQuantity());
        System.out.println("Product Target: " + product.getTarget());
        System.out.println("Product Factory: " + product.getFactory());

        System.out.println("---------------------------------------------------------");
        return "admin/product/product-detail";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdateProduct(@PathVariable Long id, Model model) {
        model.addAttribute("idProduct", id);
        System.out.println("----------------------------------------------------------");
        System.out.println("ID Current Product: " + id);
        System.out.println("----------------------------------------------------------");
        model.addAttribute("newProduct", new Product());
        return "admin/product/update-product";
    }

    @PostMapping("/admin/product/update/{id}")
    public String postUpdateProduct(@ModelAttribute("newProduct") Product product, @PathVariable Long id) {
        this.productService.handleSaveProduct(product);
        System.out.println("---------------------------------------------------------");
        System.out.println("Product ID: " + product.getId());
        System.out.println("Product Name: " + product.getName());
        System.out.println("Product Price: " + product.getPrice());
        System.out.println("Product Image: " + product.getImage());
        System.out.println("Product DetailDesc: " + product.getDetailDesc());
        System.out.println("Product ShortDesc: " + product.getShortDesc());
        System.out.println("Product Quantity: " + product.getQuantity());
        System.out.println("Product Target: " + product.getTarget());
        System.out.println("Product Factory: " + product.getFactory());

        System.out.println("---------------------------------------------------------");
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteProduct(Model model, @PathVariable Long id) {
        model.addAttribute("id", id);
        model.addAttribute("newProduct", new Product());
        return "admin/product/delete-product";
    }

    @PostMapping("/admin/product/delete")
    public String postDeleteProduct(@RequestParam("id") Long id) {
        this.productService.handleDelProduct(id);
        return "redirect:/admin/product";
    }
}
