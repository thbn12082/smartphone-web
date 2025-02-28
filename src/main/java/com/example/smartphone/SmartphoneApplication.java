package com.example.smartphone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
// @SpringBootApplication
public class SmartphoneApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmartphoneApplication.class, args);
	}

}
