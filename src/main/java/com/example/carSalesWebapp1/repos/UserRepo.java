package com.example.carSalesWebapp1.repos;

import com.example.carSalesWebapp1.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);

    void deleteById(Long id);
}