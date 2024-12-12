package com.Frontend.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(int productId) {
        return productRepository.findById(productId).orElse(null);
    }

    public void addNewProduct(Product product) {
        productRepository.save(product);
    }

    public List<Product> getAllMenProducts() {
        return productRepository.getAllCategory("Mens");
    }


    public List<Product> getAllWomenProducts() {
        return productRepository.getAllCategory("Womens");
    }

    public List<Product> getAllKidProducts() {
        return productRepository.getAllCategory("Kids");
    }

    public List <Product> getAllRetroProducts(){
        return productRepository.getAllCategory("Retro");
    }

    public List<Product> getProductSearch(String search) {

        List<Product> products =  productRepository.nameSearch(search);


        return productRepository.nameSearch(search);

    }



    public void updateProduct(int productId, Product product) {
        Product existing = getProductById(productId);
        if (existing != null) {

            productRepository.save(existing);
        }
    }
}
