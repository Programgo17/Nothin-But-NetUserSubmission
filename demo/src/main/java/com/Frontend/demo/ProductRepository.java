package com.Frontend.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {


    @Query(value = "SELECT * FROM products WHERE category = ?1;", nativeQuery = true)
    List<Product> getAllCategory(String category);


    @Query(value = "SELECT * FROM products WHERE product_name LIKE %?%;", nativeQuery = true)
    List<Product> nameSearch(String name);

}