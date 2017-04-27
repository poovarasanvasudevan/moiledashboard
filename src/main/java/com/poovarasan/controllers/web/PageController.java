package com.poovarasan.controllers.web;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/**
 * Created by poovarasanv on 20/4/17.
 * Project : mobiledashboard
 */
@Controller
public class PageController {
    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String index(Model model, String error, String logout, Principal principal) {
        if (principal != null && ((Authentication) principal).isAuthenticated()) {
            return "redirect:/home";
        }
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "index";
    }

    @RequestMapping(path = "/home", method = RequestMethod.GET)
    public String home(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("username", auth.getName());
        model.addAttribute("def", "hello_name_iss_good");
        return "home/home";
    }

}
