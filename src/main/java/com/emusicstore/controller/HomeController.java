package com.emusicstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Controller for the homepage of the application.
 * @author George Obiero
 */
@Controller
public class HomeController {
    @RequestMapping("/")
    public String home() {
        return "home";
    }
}
