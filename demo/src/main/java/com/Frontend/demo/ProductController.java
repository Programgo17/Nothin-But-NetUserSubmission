package com.Frontend.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;


    @GetMapping("/all")
    public List<Product> getAllProducts() {
        return productService.getAllProducts();
    }

    @GetMapping("/mens")
    public String getAllMenProducts(Model model) {
        model.addAttribute("products", productService.getAllMenProducts());
        return "Product-type";
    }

    @GetMapping("/womens")
    public String getAllWomenProducts(Model model) {
        model.addAttribute("products", productService.getAllWomenProducts());
        return "Product-type";
    }


    @GetMapping("/kids")
    public String getAllMenuProducts(Model model) {
        model.addAttribute("products", productService.getAllKidProducts());
        return "Product-type";
    }

    @GetMapping("/retro")
    public String getAllRetroProducts(Model model){
        model.addAttribute("products", productService.getAllRetroProducts());
        return "Product-type";
    }




    @GetMapping("/{productId}")
    public String getProductById(@PathVariable int productId, Model model) {




        Product prod = productService.getProductById(productId);

        model.addAttribute("product", prod);
        model.addAttribute("sizeList", prod.parseSizes());
        return "Product-details";
    }


    @GetMapping("/search")
    public String searchProduct(String searchStr, Model model) {



        List<Product> products = productService.getProductSearch(searchStr);

        model.addAttribute("products", products);


        return "Product-type";
    }


    @PostMapping("/new")
    public List<Product> addNewProduct(@RequestBody Product product) {
        productService.addNewProduct(product);
        return productService.getAllProducts();
    }




    @PutMapping("/update/{productId}")
    public Product updateProduct(@PathVariable int productId, @RequestBody Product product) {
        productService.updateProduct(productId, product);
        return productService.getProductById(productId);
    }
}
