package com.poovarasan.base;

import com.poovarasan.models.User;
import com.poovarasan.repository.UserRepository;
import org.apache.vysper.xmpp.addressing.Entity;
import org.apache.vysper.xmpp.authorization.UserAuthorization;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Optional;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class XMPPAuth implements UserAuthorization {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public XMPPAuth(UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    @Override
    public boolean verifyCredentials(Entity entity, String s, Object o) {
        return false;
    }

    @Override
    public boolean verifyCredentials(String s, String s1, Object o) {

        Optional<User> user = userRepository.findByUsername(s.replace("@localhost", ""));
        return user.map(user1 -> user1.getPasswordConfirm().equals(s1)).orElse(false);
    }
}
