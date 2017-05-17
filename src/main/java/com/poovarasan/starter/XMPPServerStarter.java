package com.poovarasan.starter;

import com.poovarasan.base.XMPPAuth;
import com.poovarasan.managers.DBVCardManager;
import com.poovarasan.managers.XMPPOfflineStorage;
import com.poovarasan.managers.XMPPPrivateStorageManager;
import com.poovarasan.repository.PrivateStorageRepository;
import com.poovarasan.repository.UserRepository;
import org.apache.vysper.mina.S2SEndpoint;
import org.apache.vysper.mina.TCPEndpoint;
import org.apache.vysper.spring.SpringCompatibleXMPPServer;
import org.apache.vysper.storage.OpenStorageProviderRegistry;
import org.apache.vysper.xmpp.modules.extension.xep0049_privatedata.PrivateDataModule;
import org.apache.vysper.xmpp.modules.extension.xep0050_adhoc_commands.AdhocCommandsModule;
import org.apache.vysper.xmpp.modules.extension.xep0054_vcardtemp.VcardTempModule;
import org.apache.vysper.xmpp.modules.extension.xep0077_inbandreg.InBandRegistrationModule;
import org.apache.vysper.xmpp.modules.extension.xep0092_software_version.SoftwareVersionModule;
import org.apache.vysper.xmpp.modules.extension.xep0119_xmppping.XmppPingModule;
import org.apache.vysper.xmpp.modules.extension.xep0133_service_administration.ServiceAdministrationModule;
import org.apache.vysper.xmpp.modules.extension.xep0202_entity_time.EntityTimeModule;
import org.apache.vysper.xmpp.modules.roster.RosterModule;
import org.apache.vysper.xmpp.modules.roster.persistence.MemoryRosterManager;
import org.apache.vysper.xmpp.server.ServerFeatures;
import org.apache.vysper.xmpp.server.XMPPServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
@Component
public class XMPPServerStarter implements ApplicationRunner {

    @Value("${app.xmpp.domain}")
    String xmppDoimain;

    @Value("${app.xmpp.port}")
    Integer xmppPort;

    @Value("classpath:keys/keystore.jks")
    Resource keyStore;

    private final
    UserRepository userRepository;

    private final
    PrivateStorageRepository privateStorageRepository;

    private final
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public XMPPServerStarter(UserRepository userRepository, PrivateStorageRepository privateStorageRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.privateStorageRepository = privateStorageRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }


    @Bean
    public ServerFeatures serverFeatures() {
        ServerFeatures serverFeatures = new ServerFeatures();
        serverFeatures.setStartTLSRequired(false);


        return serverFeatures;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {

        XMPPServer xmppServer = new SpringCompatibleXMPPServer(xmppDoimain);

        TCPEndpoint tcpEndpoint = new TCPEndpoint();
        tcpEndpoint.setPort(6232);

        xmppServer.addEndpoint(tcpEndpoint);
        xmppServer.addEndpoint(new S2SEndpoint());
        xmppServer.setStorageProviderRegistry(openStorageProviderRegistry());

        try {
            xmppServer.setTLSCertificateInfo(keyStore.getFile(), "poosan");
        } catch (IOException e) {
            e.printStackTrace();
        }

        xmppServer.start();

//        xmppServer.getServerRuntimeContext().getServerFeatures()
//                .setStartTLSRequired(false);


        xmppServer.addModule(new XmppPingModule());
        xmppServer.addModule(new SoftwareVersionModule());
        xmppServer.addModule(new EntityTimeModule());
        xmppServer.addModule(new VcardTempModule());
        xmppServer.addModule(new PrivateDataModule());
        xmppServer.addModule(new AdhocCommandsModule());
        xmppServer.addModule(new ServiceAdministrationModule());
        xmppServer.addModule(new InBandRegistrationModule());
        xmppServer.addModule(new RosterModule());

        System.out.println("XMPP Server Started");
    }

    private OpenStorageProviderRegistry openStorageProviderRegistry() {

        OpenStorageProviderRegistry openStorageProviderRegistry = new OpenStorageProviderRegistry();
        openStorageProviderRegistry.add(new MemoryRosterManager());
        openStorageProviderRegistry.add(new XMPPAuth(userRepository, bCryptPasswordEncoder));
        openStorageProviderRegistry.add(new DBVCardManager(userRepository));
        openStorageProviderRegistry.add(new XMPPOfflineStorage());
        openStorageProviderRegistry.add(new XMPPPrivateStorageManager(privateStorageRepository));
        return openStorageProviderRegistry;
    }
}
