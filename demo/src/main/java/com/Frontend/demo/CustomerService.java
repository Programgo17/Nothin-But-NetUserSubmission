package com.Frontend.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    PasswordEncoder passwordEncoder;


    // Get all customers
    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    // Get customer by ID
    public Customer getCustomerById(int customerId) {
        return customerRepository.findById(customerId).orElse(null);
    }

    // Create a new customer
    public void addNewCustomer(Customer customer) {
        customer.setPassword(passwordEncoder.encode(customer.getPassword()));
        customerRepository.save(customer);
    }


    public Customer getCustomerByCred(String username, String password) {
        return customerRepository.getCustomerByCred(username, password);
    }

    // Update existing customer
    public void updateCustomer(int customerId, Customer updatedCustomer) {
        Customer existingCustomer = getCustomerById(customerId);
        if (existingCustomer != null) {
            existingCustomer.setName(updatedCustomer.getName());
            existingCustomer.setEmail(updatedCustomer.getEmail());
            existingCustomer.setPhone(updatedCustomer.getPhone());
            existingCustomer.setAddress(updatedCustomer.getAddress());
            existingCustomer.setGender(updatedCustomer.getGender());
            existingCustomer.setUsername(updatedCustomer.getUsername());
            existingCustomer.setCity(updatedCustomer.getCity());
            existingCustomer.setState(updatedCustomer.getState());
            existingCustomer.setZipcode(updatedCustomer.getZipcode());
            existingCustomer.setPayment(updatedCustomer.getPayment());
            if(!existingCustomer.getPassword().equals(updatedCustomer.getPassword())){
                existingCustomer.setPassword(passwordEncoder.encode(updatedCustomer.getPassword()));
            }
            customerRepository.save(existingCustomer); // Save the updated customer
        }
    }
    public Customer getCustomerByUsername(String username) {return customerRepository.findByUsername(username);}
}





