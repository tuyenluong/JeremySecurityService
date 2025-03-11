package com.jeremy.spring.security.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeClass {

    @GetMapping("/welcome")
    public String welcomePage(){
        return "Welcome to Spring Application with Security";
    }
}
