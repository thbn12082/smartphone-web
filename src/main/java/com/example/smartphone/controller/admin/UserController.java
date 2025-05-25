package com.example.smartphone.controller.admin;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.smartphone.domain.User;
import com.example.smartphone.service.RoleService;
import com.example.smartphone.service.UploadService;
import com.example.smartphone.service.UserService;

import jakarta.validation.Valid;

@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder password;
    private final RoleService roleService;

    public UserController(UserService userService, UploadService uploadService, PasswordEncoder pass,
            RoleService roleService) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.password = pass;
        this.roleService = roleService;
    }

    @GetMapping("/admin/user/create")
    public String createUser(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create-user";
    }

    @PostMapping("/admin/user/create")
    public String getDataCreateUser(Model model, @ModelAttribute("newUser") @Valid User user,
            BindingResult bindingResult,
            @RequestParam("thebinhFile") MultipartFile file) throws IOException {
        if (bindingResult.hasErrors()) {
            return "admin/user/create-user";
        }
        if (this.userService.checkExitsUser(user)) {
            String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
            user.setAvatar(avatar);
            user.setRole(this.roleService.handleRoleByName(user.getRole().getName()));
            user.setPassword(this.password.encode(user.getPassword()));
            this.userService.handleSaveUser(user);
        } else {
            System.out.println("User đã tồn tại");
        }

        // In ra các trường cụ thể thay vì gọi user.toString()
        System.out.println("---------------------------------------------------------");
        System.out.println("Address: " + user.getAddress());
        System.out.println("Avatar: " + user.getAvatar());
        System.out.println("Email: " + user.getEmail());
        System.out.println("FullName: " + user.getFullName());
        System.out.println("Password: " + user.getPassword());
        System.out.println("Phone: " + user.getPhone());
        System.out.println("Role (Name): " + user.getRole().getName());
        System.out.println("Role (Id): " + user.getRole().getId());
        System.out.println("Role (Desc): " + user.getRole().getDescription());
        System.out.println("---------------------------------------------------------");

        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user")
    public String getAllUser(Model model, @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        Pageable pageable = PageRequest.of(page - 1, 10);
        List<User> users = this.userService.findAllUsers(pageable).getContent();
        model.addAttribute("users", users);
        model.addAttribute("currentPage", page);
        int totalPages = this.userService.findAllUsers(pageable).getTotalPages();
        model.addAttribute("totalPages", totalPages == 0 ? 1 : totalPages);

        System.out.println("---------------------------------------------------------");
        System.out.println("Total Pages: " + this.userService.findAllUsers(pageable).getTotalPages());
        System.out.println("Total Elements: " + this.userService.findAllUsers(pageable).getTotalElements());
        System.out.println("Page Size: " + this.userService.findAllUsers(pageable).getSize());
        System.out.println("Page Number: " + this.userService.findAllUsers(pageable).getNumber());
        for (User u : users) {
            System.out.println("Email: " + u.getEmail());
            System.out.println("FullName: " + u.getFullName());
            System.out.println("Phone: " + u.getPhone());
            // In ra role theo trường cụ thể
            System.out.println("Role (Name): " + u.getRole().getName());
        }
        System.out.println("---------------------------------------------------------");

        return "admin/user/table-user";
    }

    @GetMapping("/admin/user/{id}")
    public String getViewUser(Model model, @PathVariable Long id) {
        model.addAttribute("userId", id);
        User user = this.userService.handleUserById(id);
        // In ra các trường một cách cụ thể
        System.out.println("---------------------------------------------------------");
        System.out.println("Address: " + user.getAddress());
        System.out.println("Avatar: " + user.getAvatar());
        System.out.println("Email: " + user.getEmail());
        System.out.println("FullName: " + user.getFullName());
        System.out.println("Phone: " + user.getPhone());
        System.out.println("Role Name: " + user.getRole().getName());
        System.out.println("---------------------------------------------------------");
        model.addAttribute("user", user);
        return "admin/user/user-detail";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUser(Model model, @PathVariable Long id) {
        model.addAttribute("idUser", id);
        System.out.println("---------------------------------------------------------");
        System.out.println("current id: " + id);
        System.out.println("---------------------------------------------------------");
        model.addAttribute("updateUser", new User());
        return "admin/user/update-user";
    }

    @PostMapping("/admin/user/update/{id}")
    public String postUpdateUser(@ModelAttribute("updateUser") User updateUser, @PathVariable Long id) {
        if (updateUser != null) {
            User user = this.userService.handleUserById(id);
            user.setEmail(updateUser.getEmail());
            user.setPhone(updateUser.getPhone());
            user.setFullName(updateUser.getFullName());
            user.setAddress(updateUser.getAddress());
            this.userService.handleSaveUser(user);
            System.out.println("---------------------------------------------------------");
            System.out.println("Email: " + user.getEmail());
            System.out.println("FullName: " + user.getFullName());
            System.out.println("Phone: " + user.getPhone());
            System.out.println("Address: " + user.getAddress());
            System.out.println("Role Name: " + user.getRole().getName());
            System.out.println("---------------------------------------------------------");
        }
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
