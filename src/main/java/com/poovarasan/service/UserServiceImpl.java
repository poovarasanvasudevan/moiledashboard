package com.poovarasan.service;

import com.poovarasan.models.User;
import com.poovarasan.repository.RoleRepository;
import com.poovarasan.repository.UserRepository;
import com.poovarasan.socket.model.MessageModel;
import org.apache.ftpserver.ftplet.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

/**
 * Created by poovarasanv on 12/4/17.
 */
@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    private final UserManager userManager;


    @Autowired
    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder, UserManager userManager) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.userManager = userManager;
    }

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(roleRepository.findAll()));
        userRepository.save(user);
    }

    @Override
    @Cacheable("userName")
    public User findByUsername(String username) {
        return userRepository.findByUsername(username).get();
    }

    @Override
    public void sendMessage(MessageModel messageModel) {

    }
}
