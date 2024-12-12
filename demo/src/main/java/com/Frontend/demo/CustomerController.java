package com.Frontend.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.util.List;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;



    @GetMapping("/login-customer")
    public String getCustomerByCredentials(String username, String password) {





        Customer thisCust = customerService.getCustomerByCred(username, password);



        if (thisCust == null) {
            return "/login";
        }

        return "redirect:/customers/" + thisCust.getCustomerId();
    }


    @GetMapping("/customers/{customerId}")
    public String getCustomerById(@PathVariable int customerId, Model model) {
        model.addAttribute("customer", customerService.getCustomerById(customerId));
        return "customer-details";
    }

    @GetMapping("/customers/profile")
    public String getCustomerProfile(Model model) {
        String name = SecurityContextHolder.getContext().getAuthentication().getName();

        int id = customerService.getCustomerByUsername(name).getCustomerId();

        model.addAttribute("customer", customerService.getCustomerById(id));
        return "customer-details";
    }

    @GetMapping("/signup")
    public String addNewCustomer(Model model) {
        Customer customer = new Customer();
        //model.addAttribute("customer", customer);
        return "customer-create";

    }



    @PostMapping("/signup")
    public String createCustomer(Customer customer, Model model) {
        customer.setRole("customer");
        customerService.addNewCustomer(customer);

        return "redirect:/customers/profile";

    }

    @GetMapping("/customers/update/{customerId}")
    public String updateCustomerForm(@PathVariable int customerId, Model model) {
        Customer customer = customerService.getCustomerById(customerId);
        model.addAttribute("customer", customer);
        return "customer-update";
    }

    @PostMapping("/customers/update/{customerId}")
    public String updateCustomer(@PathVariable int customerId, @ModelAttribute("customer") Customer customer) {
        customerService.updateCustomer(customerId,customer);
        return "redirect:/customers/" + customer.getCustomerId();

    }


}









