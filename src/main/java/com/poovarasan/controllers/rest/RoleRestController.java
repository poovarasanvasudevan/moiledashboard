package com.poovarasan.controllers.rest;

import com.poovarasan.models.Role;
import com.poovarasan.models.User;
import com.poovarasan.repository.RoleRepository;
import com.poovarasan.repository.UserRepository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Set;

/**
 * Created by poovarasanv on 26/4/17.
 * Project : mobiledashboard
 */

@Api(
        basePath = "/api/role",
        value = "Rest Operations with User",
        description = "Operations with Role Models through Rest",
        produces = "application/json",
        tags = {"Role Related Services"}
)
@RestController
@RequestMapping(path = "/api/role")
public class RoleRestController {

    private final RoleRepository roleRepository;
    private final UserRepository userRepository;

    @Autowired
    public RoleRestController(RoleRepository roleRepository, UserRepository userRepository) {
        this.roleRepository = roleRepository;
        this.userRepository = userRepository;
    }

    @RequestMapping(path = "/all", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "List All The Roles", notes = "It List All The Roles")
    public List<Role> getAllRole() {
        return roleRepository.findAll();
    }


    @RequestMapping(path = "/user/{roleid}", method = RequestMethod.GET)
    @PreAuthorize("hasAnyRole('ADMIN','API')")
    @ApiOperation(value = "List All The Users associated to that role", notes = "It List All The User associated to that role")
    public Set<User> getUserRoles(@PathVariable("roleid") String roleid) {
        return roleRepository.findByName(roleid).getUsers();
    }

}
