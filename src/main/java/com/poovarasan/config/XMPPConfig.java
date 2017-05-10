package com.poovarasan.config;

import com.poovarasan.base.XMPPAuth;
import com.poovarasan.managers.DBVCardManager;
import com.poovarasan.managers.XMPPOfflineStorage;
import com.poovarasan.managers.XMPPPrivateStorageManager;
import com.poovarasan.repository.PrivateStorageRepository;
import com.poovarasan.repository.UserRepository;
import org.apache.vysper.mina.S2SEndpoint;
import org.apache.vysper.mina.TCPEndpoint;
import org.apache.vysper.storage.OpenStorageProviderRegistry;
import org.apache.vysper.xmpp.authorization.Plain;
import org.apache.vysper.xmpp.authorization.SASLMechanism;
import org.apache.vysper.xmpp.modules.roster.persistence.MemoryRosterManager;
import org.apache.vysper.xmpp.server.XMPPServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Bean
    public XMPPServer xmppServer() {
        XMPPServer xmppServer = new XMPPServer(xmppDoimain);
        xmppServer.addEndpoint(new TCPEndpoint());
        xmppServer.addEndpoint(new S2SEndpoint());


        SASLMechanism saslMechanism = new Plain();
        List<SASLMechanism> saslMechanisms = new ArrayList<>();
        saslMechanisms.add(saslMechanism);

        xmppServer.setSASLMechanisms(saslMechanisms);


        try {
            xmppServer.setTLSCertificateInfo(keyStore.getFile(), "poosan");
        } catch (IOException e) {
            e.printStackTrace();
        }


        xmppServer.setStorageProviderRegistry(openStorageProviderRegistry());
        return xmppServer;
    }


    @Bean
    public OpenStorageProviderRegistry openStorageProviderRegistry() {
        Map<String, String> userMap = new HashMap<>();
        userMap.put("poosanv", "poosanv");

        OpenStorageProviderRegistry openStorageProviderRegistry = new OpenStorageProviderRegistry();
        openStorageProviderRegistry.add(new MemoryRosterManager());
        openStorageProviderRegistry.add(new XMPPAuth(userRepository, bCryptPasswordEncoder));
        openStorageProviderRegistry.add(new DBVCardManager(userRepository));
        openStorageProviderRegistry.add(new XMPPOfflineStorage());
        openStorageProviderRegistry.add(new XMPPPrivateStorageManager(privateStorageRepository));

        //JcrPrivateDataPersistenceManager
        return openStorageProviderRegistry;
    }
}
