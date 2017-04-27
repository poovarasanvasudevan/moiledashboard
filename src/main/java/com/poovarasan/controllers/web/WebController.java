package com.poovarasan.controllers.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by poovarasanv on 20/4/17.
 * Project : mobiledashboard
 */
@Controller
@RequestMapping(path = "/web")
public class WebController {

    @RequestMapping(path = "/m", method = RequestMethod.GET)
    public String webMobile(Model model) {
        return "web/mobile";
    }

    @RequestMapping(path = "/swagger", method = RequestMethod.GET)
    public String swagger(Model model) {
        return "redirect:/web/swagger/current";
    }

    @RequestMapping(path = "/swagger/current",method = RequestMethod.GET)
    public String currentSwagger(Model model) {
        model.addAttribute("swagger", "/api-docs");
        return "swagger/index";
    }

    @RequestMapping(path = "/docs", method = RequestMethod.GET)
    public String docs(Model model) {
        model.addAttribute("swagger", true);
        return "docs/docs";
    }

}
