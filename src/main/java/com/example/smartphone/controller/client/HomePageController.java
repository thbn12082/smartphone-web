package com.example.smartphone.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HomePageController {
    @GetMapping("/")
    public String getHomePage() {
        return "client/home-page";
    }

}
