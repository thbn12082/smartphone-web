package com.example.smartphone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

    @GetMapping("/")
    public String getHello(Model model) {
        model.addAttribute("thebinh", "minhngoc");
        return "hello";
    }

}
