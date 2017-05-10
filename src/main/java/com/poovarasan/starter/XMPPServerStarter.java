package com.poovarasan.starter;

import org.apache.vysper.xmpp.modules.extension.xep0049_privatedata.PrivateDataModule;
import org.apache.vysper.xmpp.modules.extension.xep0050_adhoc_commands.AdhocCommandsModule;
import org.apache.vysper.xmpp.modules.extension.xep0054_vcardtemp.VcardTempModule;
import org.apache.vysper.xmpp.modules.extension.xep0077_inbandreg.InBandRegistrationModule;
import org.apache.vysper.xmpp.modules.extension.xep0092_software_version.SoftwareVersionModule;
import org.apache.vysper.xmpp.modules.extension.xep0119_xmppping.XmppPingModule;
import org.apache.vysper.xmpp.modules.extension.xep0133_service_administration.ServiceAdministrationModule;
import org.apache.vysper.xmpp.modules.extension.xep0202_entity_time.EntityTimeModule;
import org.apache.vysper.xmpp.modules.roster.RosterModule;
import org.apache.vysper.xmpp.server.XMPPServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
@Component
public class XMPPServerStarter implements ApplicationRunner {

    private final
    XMPPServer xmppServer;

    @Autowired
    public XMPPServerStarter(XMPPServer xmppServer) {
        this.xmppServer = xmppServer;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        xmppServer.start();


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
}
