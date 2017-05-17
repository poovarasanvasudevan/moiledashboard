package com.poovarasan.starter;

import com.poovarasan.config.SSHPasswordAuthenticator;
import com.poovarasan.config.SSHPublicKeyAuthenticator;
import com.poovarasan.repository.UserRepository;
import org.apache.sshd.server.SshServer;
import org.apache.sshd.server.keyprovider.SimpleGeneratorHostKeyProvider;
import org.apache.sshd.server.scp.ScpCommandFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;

import javax.annotation.PreDestroy;
import java.io.IOException;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
@Component
public class SSHServerStarter implements ApplicationRunner {

    private final UserRepository userRepository;
    private SshServer sshd;

    @Value("${app.ssh.port}")
    Integer sshPort;

    @Value("classpath:keys/sshkey")
    Resource keyStore;

    @Autowired
    public SSHServerStarter(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        sshd = SshServer.setUpDefaultServer();
        sshd.setPort(sshPort);
        sshd.setPasswordAuthenticator(new SSHPasswordAuthenticator(userRepository));
        sshd.setPublickeyAuthenticator(new SSHPublicKeyAuthenticator("iampoosan"));
        sshd.setKeyPairProvider(new SimpleGeneratorHostKeyProvider(keyStore.getFile()));
        sshd.setCommandFactory(new ScpCommandFactory());
        //sshd.setShellFactory(new ProcessShellFactory("/bin/sh", "-i", "-l"));
        sshd.start();
    }

    @PreDestroy
    public void beforeShutDown() {
        try {
            if (sshd.isOpen()) {
                sshd.stop(true);
            } else {
                sshd.stop();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
