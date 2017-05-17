package com.poovarasan.config;

import com.poovarasan.models.User;
import com.poovarasan.repository.UserRepository;
import org.apache.sshd.server.auth.password.PasswordAuthenticator;
import org.apache.sshd.server.auth.password.PasswordChangeRequiredException;
import org.apache.sshd.server.session.ServerSession;

import java.util.Optional;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
public class SSHPasswordAuthenticator implements PasswordAuthenticator {
    private UserRepository userRepository;

    public SSHPasswordAuthenticator(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public boolean authenticate(String s, String s1, ServerSession serverSession) throws PasswordChangeRequiredException {
        Optional<User> user = userRepository.findByUsername(s.replace("@localhost", ""));
        return user.map(user1 -> user1.getPasswordConfirm().equals(s1)).orElse(false);
    }
}
