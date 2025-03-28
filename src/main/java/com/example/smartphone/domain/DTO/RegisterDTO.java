package com.example.smartphone.domain.DTO;

import com.example.smartphone.service.validator.RegisterChecked;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@RegisterChecked(message = "User register validation failed")
public class RegisterDTO {
    @NotEmpty(message = "First name khong duoc de trong")
    @Size(min = 3, message = "First name phai co toi thieu 3 ki tu")
    private String firstName;
    @NotEmpty(message = "Lastname khong duoc de trong")
    @Size(min = 3, message = "Lastname phai co toi thieu 3 ki tu")
    private String lastName;
    private String email;
    private String password;
    private String confirmPassword;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

}
