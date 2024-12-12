package com.Frontend.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;


@Service
public class CustomUserDetailsService implements UserDetailsService {


    @Autowired
    private CustomerRepository repo;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       Customer customer = repo.findByUsername(username);

       ArrayList<SimpleGrantedAuthority> authList = new ArrayList<>();
       authList.add(new SimpleGrantedAuthority(customer.getRole()));

        return new org.springframework.security.core.userdetails.User(
                customer.getUsername(), customer.getPassword(), authList);

    }
}

