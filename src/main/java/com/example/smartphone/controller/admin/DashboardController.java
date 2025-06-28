package com.example.smartphone.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.DTO.ProductDTO;
import com.example.smartphone.service.OrderService;
import com.example.smartphone.service.ProductService;
import com.example.smartphone.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;
    private final OrderService orderService;
    private final ProductService productService;

    public DashboardController(UserService userService, OrderService orderService, ProductService productService) {
        this.orderService = orderService;
        this.userService = userService;
        this.productService = productService;
    }

    @GetMapping("/admin")
    public String getDashboard(Model model, @RequestParam("top") Optional<Integer> topOptional) {
        model.addAttribute("countUser", this.userService.countUser());
        model.addAttribute("countProduct", this.userService.countProduct());
        model.addAttribute("countOrder", this.userService.countOrder());

        int top = 5;
        top = topOptional.orElse(5); // default top = 5
        PageRequest pageable = PageRequest.of(0, top);

        Page<ProductDTO> productPage = this.productService.findTopSellingProducts(pageable);
        List<ProductDTO> topProducts = productPage.getContent();

        model.addAttribute("topProducts", topProducts);
        System.out.println("------------------------------------------------------------");
        System.out.println("Count user: " + this.userService.countUser());
        System.out.println("Count product: " + this.userService.countProduct());
        System.out.println("Count order: " + this.userService.countOrder());
        for (ProductDTO product : topProducts) {
            System.out.println("Product ID: " + product.getId());
            System.out.println("Product Name: " + product.getName());
            System.out.println("Product Price: " + product.getPrice());
            System.out.println("Product Factory: " + product.getFactory());
            System.out.println("Product Sold Quantity: " + product.getSoldQuantity());
            System.out.println("------------------------------------------------------------");

        }
        System.out.println("------------------------------------------------------------");
        return "admin/dashboard/show-dashboard";
    }

    @GetMapping("/admin/order-history")
    public String getOrderHistory(Model model) {
        return "admin/order/order-history";
    }
}
