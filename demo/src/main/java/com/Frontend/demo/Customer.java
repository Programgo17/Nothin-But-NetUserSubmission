package com.Frontend.demo;

import jakarta.persistence.*;

@Entity
@Table(name = "customers")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int customerId;

    @Column(nullable = false)
    private String name;


    @Column(nullable = false, unique = true)
    private String email;



    @Column()
    private String phone;

    @Column
    private String payment;

    @Column()
    private String address;

    @Column()
    private String gender;

    @Column()
    private String username;

    @Column()
    private String password;


    @Column()
    private String City;

    @Column()
    private String zipcode;

    @Column()
    private String state;

    @Column(nullable = false)
    private String role;


    public Customer(int customerId, String state, String payment,String zipcode, String role, String city,String name, String email, String phone, String address, String gender, String username, String password, String picture) {
        this.customerId = customerId;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.username = username;
        this.password = password;
        this.state = state;
        this.zipcode = zipcode;
        this.City = city;
        this.role = role;
        this.payment = payment;
    }

    public Customer() {}

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }



    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {  this.username = username;

    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }
}

