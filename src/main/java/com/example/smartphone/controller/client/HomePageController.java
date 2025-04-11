package com.example.smartphone.controller.client;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.Role;
import com.example.smartphone.domain.User;
import com.example.smartphone.domain.DTO.RegisterDTO;
import com.example.smartphone.service.ProductService;
import com.example.smartphone.service.UserService;

import jakarta.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class HomePageController {
    private final ProductService productService;
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public HomePageController(ProductService productService, UserService userService, PasswordEncoder passwordEncoder) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.handleAllProduct();
        model.addAttribute("products", products);
        System.out.println(products);
        return "client/home-page";
    }

    // login
    @GetMapping("/login")
    public String getLogin() {
        return "auth/login";
    }

    @GetMapping("/access-deny")
    public String getDeny() {
        return "auth/deny";
    }

    // register
    @GetMapping("/register")
    public String getRegister(Model model) {
        model.addAttribute("register", new RegisterDTO());
        return "auth/register";
    }

    @PostMapping("/register")
    public String postRegister(@ModelAttribute("register") @Valid RegisterDTO registerDTO,
            BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "auth/register";
        }
        String hashPassword = this.passwordEncoder.encode(registerDTO.getPassword());
        registerDTO.setPassword(hashPassword);
        User user = this.userService.RegisterDTOtoUser(registerDTO);
        user.setRole(this.userService.handleRoleByName("USER"));
        this.userService.handleSaveUser(user);
        return "redirect:/login";
    }

}
