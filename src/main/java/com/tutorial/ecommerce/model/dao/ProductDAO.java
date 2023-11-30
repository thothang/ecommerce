package com.tutorial.ecommerce.model.dao;


import com.tutorial.ecommerce.model.Product;
import org.springframework.data.repository.ListCrudRepository;

public interface ProductDAO extends ListCrudRepository<Product, Long> {
}