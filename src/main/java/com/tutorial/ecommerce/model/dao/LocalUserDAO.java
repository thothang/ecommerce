package com.tutorial.ecommerce.model.dao;

import com.tutorial.ecommerce.model.LocalUser;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface LocalUserDAO extends CrudRepository<LocalUser, Long> {

    Optional<LocalUser> findByUsernameIgnoreCase(String username);

    Optional<LocalUser> findByEmailIgnoreCase(String email);

}
