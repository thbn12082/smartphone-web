package com.example.smartphone.service;

import org.springframework.stereotype.Service;

import com.example.smartphone.domain.Role;
import com.example.smartphone.repository.RoleRepository;

@Service
public class RoleService {
    private final RoleRepository roleRepository;

    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role handleRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

}
