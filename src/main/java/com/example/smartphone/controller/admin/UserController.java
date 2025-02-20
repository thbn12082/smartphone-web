package com.example.smartphone.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.smartphone.domain.User;
import com.example.smartphone.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/admin/user/create")
    public String createUser(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create-user";
    }

    @PostMapping("/admin/user/create")
    public String getDataCreateUser(@ModelAttribute("newUser") User user) {
        if (this.userService.checkExitsUser(user)) {
            this.userService.handleSaveUser(user);
        } else {
            System.out.println("User đã tồn tại");
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user")
    public String getAllUser(Model model) {
        List<User> users = this.userService.findAllUsers();
        model.addAttribute("users", users);
        return "admin/user/table-user";
    }

    @GetMapping("/admin/user/{id}")
    public String getViewUser(Model model, @PathVariable Long id) {
        model.addAttribute("userId", id);
        User user = this.userService.handleUserById(id);
        model.addAttribute("user", user);
        return "admin/user/user-detail";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUser(Model model, @PathVariable Long id) {
        model.addAttribute("idUser", id);
        model.addAttribute("updateUser", new User());
        return "admin/user/update-user";
    }

    @PostMapping("/admin/user/update/{id}")
    public String postUpdateUser(@ModelAttribute("updateUser") User updateUser, @PathVariable Long id) {
        User user = this.userService.handleUserById(id);
        user.setEmail(updateUser.getEmail());
        user.setPhone(updateUser.getPhone());
        user.setFullName(updateUser.getFullName());
        user.setAddress(updateUser.getAddress());
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUser(Model model, @PathVariable Long id) {
        model.addAttribute("userId", id);
        return "admin/user/delete-user";
    }

    @PostMapping("/admin/user/delete/{id}")
    public String postDeleteUser(@PathVariable Long id) {
        this.userService.handleDelUser(id);
        return "redirect:/admin/user";
    }

}
