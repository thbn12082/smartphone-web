package com.example.smartphone.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.smartphone.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;

    public DashboardController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/admin")
    public String getDashboard(Model model) {
        model.addAttribute("countUser", this.userService.countUser());
        model.addAttribute("countProduct", this.userService.countProduct());
        model.addAttribute("countOrder", this.userService.countOrder());
        System.out.println("------------------------------------------------------------");
        System.out.println("Count user: " + this.userService.countUser());
        System.out.println("Count product: " + this.userService.countProduct());
        System.out.println("Count order: " + this.userService.countOrder());
        System.out.println("------------------------------------------------------------");
        return "admin/dashboard/show-dashboard";
    }

    @GetMapping("/admin/order-history")
    public String getOrderHistory(Model model) {
        return "admin/order/order-history";
    }
}
