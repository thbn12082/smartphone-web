package com.example.smartphone.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Order;
import com.example.smartphone.domain.Role;
import com.example.smartphone.domain.User;
import com.example.smartphone.domain.DTO.RegisterDTO;
import com.example.smartphone.repository.OrderRepository;
import com.example.smartphone.repository.ProductRepository;
import com.example.smartphone.repository.RoleRepository;
import com.example.smartphone.repository.UserRepository;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;
    private final OrderRepository orderRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository,
            ProductRepository productRepository, OrderRepository orderRepository) {
        this.productRepository = productRepository;
        this.orderRepository = orderRepository;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public boolean checkExitsUser(User user) {
        if (this.userRepository.findByEmail(user.getEmail()) != null) {
            return false;
        } else {
            return true;
        }
    }

    public void handleSaveUser(User user) {
        this.userRepository.save(user);
    }

    public Page<User> findAllUsers(Pageable pageable) {
        return this.userRepository.findAll(pageable);
    }

    public User handleUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User handleUserById(long id) {
        return this.userRepository.findById(id);
    }

    public Role handleRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public void handleDelUser(long id) {
        this.userRepository.delete(this.userRepository.findById(id));
    }

    public boolean checkValidEmail(String email) {
        if (this.userRepository.findByEmail(email) != null) {
            return true;
        } else {
            return false;
        }
    }

    public User RegisterDTOtoUser(RegisterDTO registerDTO) {
        User user = new User();
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        return user;

    }

    public long countUser() {
        return this.userRepository.count();
    }

    public long countProduct() {
        return this.productRepository.count();
    }

    public long countOrder() {
        return this.orderRepository.count();
    }

}
