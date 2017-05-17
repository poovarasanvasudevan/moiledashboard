package com.poovarasan.config;

import com.poovarasan.repository.PrivateStorageRepository;
import com.poovarasan.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
@Configuration
public class XMPPConfig {

    @Value("${app.xmpp.domain}")
    String xmppDoimain;


    @Value("${app.xmpp.port}")
    Integer xmppPort;

    @Value("classpath:keys/keystore.jks")
    Resource keyStore;

    @Autowired
    UserRepository userRepository;

    @Autowired
    PrivateStorageRepository privateStorageRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;


}
