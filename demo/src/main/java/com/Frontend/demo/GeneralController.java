package com.Frontend.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class GeneralController {

    @GetMapping("/")
    public String displayHome() {

        return "homepage";
    }

    @GetMapping("/helpcenter")
    public String displayHelpCenter() {

        return "HelpCenter";
    }

    @GetMapping("/contact")
    public String displayContactCenter() {

        return "Contact";
    }

    @GetMapping("/login")
    public String displayLoginPage() {

        return "LogIn";
    }

    @GetMapping("/orderconfirmation")
    public String displayOrderConfirmation(){

        return "Order-choice";
    }



}




