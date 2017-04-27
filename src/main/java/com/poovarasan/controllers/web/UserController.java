package com.poovarasan.controllers.web;

import com.poovarasan.models.Role;
import com.poovarasan.models.User;
import com.poovarasan.service.RoleService;
import com.poovarasan.service.SecurityService;
import com.poovarasan.service.UserService;
import com.poovarasan.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by poovarasanv on 12/4/17.
 */

@Controller
public class UserController {

    private final UserService userService;
    private final RoleService roleService;
    private final SecurityService securityService;
    private final UserValidator userValidator;

    @Autowired
    public UserController(UserService userService, RoleService roleService, SecurityService securityService, UserValidator userValidator) {
        this.userService = userService;
        this.roleService = roleService;
        this.securityService = securityService;
        this.userValidator = userValidator;
    }

    @RequestMapping(value = "/test")
    public String test(Model model) {

        return "test";
    }

}
