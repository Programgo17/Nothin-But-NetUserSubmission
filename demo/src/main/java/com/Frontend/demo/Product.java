package com.Frontend.demo;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int productId;

    @Column(nullable = false)
    private String productName;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private double price;



    private String size;


    private String color;

    private String category;


    private int quantity;


    @Column(name = "image_url")
    private String imageUrl;


    public Product(String imageUrl, int productId, int quantity, String productName, String description, double price, String size, String color, String category) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.price = price;
        this.size = size;
        this.color = color;
        this.category = category;
        this.quantity = quantity;
        this.imageUrl = imageUrl;

    }


    public Product() {}


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }


    public List<String> parseSizes() {

        ArrayList<String> sizes = new ArrayList<String>();

        String[] strArr = this.size.split(",");

        for (String str: strArr) {
            sizes.add(str);
        }

        return sizes;

    }
}

