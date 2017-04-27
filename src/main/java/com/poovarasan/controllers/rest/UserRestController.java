package com.poovarasan.controllers.rest;

import com.poovarasan.controllers.rest.models.ResponseModel;
import com.poovarasan.models.Role;
import com.poovarasan.models.User;
import com.poovarasan.repository.RoleRepository;
import com.poovarasan.repository.UserRepository;
import com.poovarasan.socket.model.Message;
import com.poovarasan.socket.model.MessageFormat;
import com.poovarasan.socket.model.SimpleMessage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

/**
 * Created by poovarasanv on 20/4/17.
 * Project : mobiledashboard
 */
@Api(
        basePath = "/api/user",
        value = "Rest Operations with User",
        description = "Operations with User Models through Rest",
        produces = "application/json",
        tags = {"User Related Services"}
)
@RestController
@RequestMapping(path = "/api/user")
public class UserRestController {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final SimpMessagingTemplate simpMessagingTemplate;

    @Autowired
    public UserRestController(UserRepository userRepository, RoleRepository roleRepository, SimpMessagingTemplate simpMessagingTemplate) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.simpMessagingTemplate = simpMessagingTemplate;
    }

    @RequestMapping(path = "/all", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "List All The Users", notes = "It List All The User")
    public List<User> getAllUser() {
        return userRepository.findAll();
    }


    @RequestMapping(path = "/create", method = RequestMethod.POST)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "Create User", notes = "Creates New User")
    public User createUser(@RequestBody User user) {
        return userRepository.save(user);
    }


    @RequestMapping(path = "/update", method = RequestMethod.PUT)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "Update User", notes = "Updates User")
    public User updateUser(@RequestBody User user) {
        return userRepository.save(user);
    }


    @RequestMapping(path = "/delete/{userid}", method = RequestMethod.DELETE)
    @PreAuthorize("hasAnyRole('ADMIN')")
    @ApiOperation(value = "Delete User", notes = "Delete User")
    public ResponseModel deleteUser(@PathVariable String userid) {
        userRepository.delete(userid);
        return new ResponseModel(200, "User " + userid + " Deleted Succesfully");
    }


    @RequestMapping(path = "/role/{userid}", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "Get Roles For the User", notes = "List All The Roles for the User")
    public Set<Role> userRole(@PathVariable("userid") String userId) {
        User user = userRepository.findOne(userId);
        return user.getRoles();
    }


    @RequestMapping(path = "/me", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "Get The current Logged User", notes = "Logged User")
    public User me() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return userRepository.findByUsername(auth.getName());
    }


    @RequestMapping(path = "/me/role", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "Get The current Logged Users Role", notes = "Logged User Role")
    public Set<Role> meRole() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return userRepository.findByUsername(auth.getName()).getRoles();
    }


    @RequestMapping(path = "/message/{username}", method = RequestMethod.POST)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "Sends the Message to User", notes = "Message to User")
    public MessageFormat sendMessage(@PathVariable("username") String userid, @RequestBody String message) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User to = userRepository.findByUsername(userid);
        User from = userRepository.findByUsername(auth.getName());

        Message message1 = new Message();
        message1.setText(message);
        message1.setFrom(from.getId());

        //sending Message
        simpMessagingTemplate.convertAndSendToUser(userid, "/queue/notification", message1);

        return new MessageFormat(from, to, message1, new Timestamp(System.currentTimeMillis()));
    }


}
