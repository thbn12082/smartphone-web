package com.example.smartphone.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.smartphone.domain.User;
import com.example.smartphone.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
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

    public List<User> findAllUsers() {
        return this.userRepository.findAll();
    }

    public User handleUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User handleUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void handleDelUser(long id) {
        this.userRepository.delete(this.userRepository.findById(id));
    }

}
