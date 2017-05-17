package com.poovarasan.managers;

import com.poovarasan.models.XMPPPrivateDataStorage;
import com.poovarasan.repository.PrivateStorageRepository;
import org.apache.vysper.xmpp.addressing.Entity;
import org.apache.vysper.xmpp.modules.extension.xep0049_privatedata.PrivateDataPersistenceManager;

import java.util.Optional;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class XMPPPrivateStorageManager implements PrivateDataPersistenceManager {

    private PrivateStorageRepository privateStorageRepository;

    public XMPPPrivateStorageManager(PrivateStorageRepository privateStorageRepository) {
        this.privateStorageRepository = privateStorageRepository;
    }

    @Override
    public boolean isAvailable() {
        return true;
    }

    @Override
    public String getPrivateData(Entity entity, String s) {
        Optional<XMPPPrivateDataStorage> xmppPrivateDataStorages = privateStorageRepository.findByNodeAndKey(entity.getNode(), s);
        return xmppPrivateDataStorages.map(XMPPPrivateDataStorage::getData).orElse(null);
    }

    @Override
    public boolean setPrivateData(Entity entity, String s, String s1) {
        XMPPPrivateDataStorage xmppPrivateDataStorage = new XMPPPrivateDataStorage();
        xmppPrivateDataStorage.setNode(entity.getNode());
        xmppPrivateDataStorage.setData(s1);
        xmppPrivateDataStorage.setKey(s);
        privateStorageRepository.save(xmppPrivateDataStorage);
        return true;
    }
}
