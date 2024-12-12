package com.Frontend.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {


    @Query(value = "SELECT * FROM customers WHERE username = ?1 AND password = ?2", nativeQuery = true)
    Customer getCustomerByCred(String username, String password);

    @Query(value = "SELECT * FROM customers WHERE username = :userName;", nativeQuery = true)
   Customer findByUsername(@Param("userName") String userName);

}










