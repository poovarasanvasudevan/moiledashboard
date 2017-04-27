package com.poovarasan.controllers.web;

import com.poovarasan.service.RoleService;
import com.poovarasan.service.SecurityService;
import com.poovarasan.service.UserService;
import com.poovarasan.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sun.mail.util.TraceInputStream;
/**
 * Created by poovarasanv on 12/4/17.
 */

@Controller
public class UserController {

    private final UserService userService;
    private final RoleService roleService;
    private final SecurityService securityService;
    private final UserValidator userValidator;
    private final MailSender javaMailSender;

    @Autowired
    public UserController(UserService userService, RoleService roleService, SecurityService securityService, UserValidator userValidator, MailSender javaMailSender) {
        this.userService = userService;
        this.roleService = roleService;
        this.securityService = securityService;
        this.userValidator = userValidator;
        this.javaMailSender = javaMailSender;
    }

    @RequestMapping(value = "/test")
    public String test(Model model) {

        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo("user@kinetic.dev");
        mailMessage.setReplyTo("admin@kinetic.dev");
        mailMessage.setFrom("admin@kinetic.dev");
        mailMessage.setSubject("Lorem ipsum");
        mailMessage.setText("Lorem ipsum dolor sit amet [...]");
        javaMailSender.send(mailMessage);

        return "test";
    }

}
