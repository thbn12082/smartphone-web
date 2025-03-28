package com.example.smartphone.domain;

import java.util.List;

import com.example.smartphone.service.validator.StrongPassword;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Email(message = "Email khong hop le", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
    @NotEmpty(message = "Email khong duoc de trong")
    private String email;
    @Size(min = 3, message = "password phai co toi thieu 3 ki tu")
    @StrongPassword(message = "password phai co it nhat 1 chu hoa, 1 chu thuong, 1 so va 1 ki tu dac biet")
    private String password;
    @Size(min = 2, message = "fullname phai co toi thieu 2 ki tu")
    private String fullName;
    @NotEmpty(message = "address khong duoc de trong")
    private String address;
    @NotEmpty(message = "phone khong duoc de trong")
    private String phone;
    private String avatar;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    @OneToMany(mappedBy = "user")
    private List<Order> orders;

}
