package com.example.smartphone.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.session.security.web.authentication.SpringSessionRememberMeServices;

import com.example.smartphone.repository.UserRepository;
import com.example.smartphone.service.CustomUserDetailsService;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // bean nay de spring biet ta su dung CustomeUserDetailsService
    @Bean
    public UserDetailsService userDetailsService(UserRepository userRepository) {
        return new CustomUserDetailsService(userRepository);
    }

    // bean nay de spring biet ta su dung passwordencoder
    @Bean
    public DaoAuthenticationProvider authProvider(
            PasswordEncoder passwordEncoder,
            UserDetailsService userDetailsService) {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService);
        authProvider.setPasswordEncoder(passwordEncoder);
        authProvider.setHideUserNotFoundExceptions(true);
        // an khong cho hacker biet thong bao loi
        return authProvider;
    }

    @Bean
    public AuthenticationSuccessHandler customeSuccessHandler() {
        return new CustomSuccessHandler();
    }

    // neu muon tang thoi gian song session thi them dong nay
    @Bean
    public SpringSessionRememberMeServices rememberMeServices() {
        SpringSessionRememberMeServices rememberMeServices = new SpringSessionRememberMeServices();
        // optionally customize
        rememberMeServices.setAlwaysRemember(true);
        return rememberMeServices;
    }

    // bean nay de spring biet ta su dung form login cua ta
    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http

                .authorizeHttpRequests(authorize -> authorize
                        .dispatcherTypeMatchers(DispatcherType.FORWARD,
                                DispatcherType.INCLUDE)
                        .permitAll()
                        .requestMatchers("/", "/register", "/product/**", "/login", "/client/**", "/css/**", "/js/**",
                                "/img/**",
                                "/images/**")
                        .permitAll()
                        .requestMatchers("/admin/**").hasRole("ADMIN")
                        // ham hasRole se tu dong cos "ROLE_"
                        .anyRequest().authenticated())
                .sessionManagement((sessionManagement) -> sessionManagement
                        .sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
                        .invalidSessionUrl("/logout?expired")
                        .maximumSessions(1)
                        .maxSessionsPreventsLogin(false))

                .logout(logout -> logout.deleteCookies("JSESSIONID").invalidateHttpSession(true))
                .rememberMe(r -> r.rememberMeServices(rememberMeServices()))
                .formLogin(formLogin -> formLogin
                        .loginPage("/login")
                        .failureUrl("/login?error")
                        .successHandler(customeSuccessHandler())
                        .permitAll())
                .exceptionHandling(ex -> ex.accessDeniedPage("/access-deny"));

        return http.build();

    }
}
