package com.Frontend.demo;



import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;


import java.io.IOException;


public class CustomAuthenticationSuccessHandler implements org.springframework.security.web.authentication.AuthenticationSuccessHandler {


    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {


        String redirectURL = request.getContextPath();



        if (authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("admin"))) {

            redirectURL = "/admin/users/all";
        } else if (authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("customer"))) {

            redirectURL = "/customers/profile";
        } else {
            redirectURL = "/";
        }



        response.sendRedirect(redirectURL);
    }
}

