package com.example.smartphone.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.smartphone.domain.Cart;
import com.example.smartphone.domain.CartDetail;
import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.Product;
import com.example.smartphone.domain.Role;
import com.example.smartphone.domain.User;
import com.example.smartphone.domain.DTO.RegisterDTO;
import com.example.smartphone.service.OrderService;
import com.example.smartphone.service.ProductService;
import com.example.smartphone.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
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
    private final OrderService orderService;

    public HomePageController(ProductService productService, UserService userService, PasswordEncoder passwordEncoder,
            OrderService orderService) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.orderService = orderService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        Pageable page = PageRequest.of(0, 8);
        Page<Product> pg = this.productService.handleAllProduct(page);
        List<Product> products = pg.getContent();
        model.addAttribute("products", products);
        System.out.println("===================================================");
        System.out.println("pageSize: " + pg.getSize());
        for (Product product : products) {
            System.out.println(product.getName());
            System.out.println(product.getPrice());
            System.out.println(product.getImage());
            System.out.println(product.getDetailDesc());
            System.out.println(product.getShortDesc());
            System.out.println(product.getQuantity());
            System.out.println(product.getSold());
            System.out.println(product.getId());
            System.out.println("---------------------------------------------------------");

        }
        System.out.println("===================================================");
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

    @GetMapping("/order-history")
    public String getOrderHistoryPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        Cart cart = this.productService.fetchByUser(currentUser);
        List<CartDetail> cartDetails = cart == null ? new ArrayList<>() : cart.getCartDetails();
        List<Order> orders = this.orderService.fetchOrderByUser(currentUser);
        model.addAttribute("orders", orders);

        System.out.println("===================================================");
        System.out.println("User ID: " + currentUser.getId());
        for (Order order : orders) {
            System.out.println("Order ID: " + order.getId());
            System.out.println("Total Price: " + order.getTotalPrice());
            System.out.println("Receiver Name: " + order.getRecriverName());
            System.out.println("Receiver Address: " + order.getReceiverAddress());
            System.out.println("Receiver Phone: " + order.getReceiverPhone());
            System.out.println("Status: " + order.getStatus());
            System.out.println("---------------------------------------------------------");
        }
        System.out.println("===================================================");

        return "client/cart/order-history";
    }

}
