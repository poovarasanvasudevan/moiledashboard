package com.poovarasan.listeners;

import com.poovarasan.models.XMPPPrivateDataStorage;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.sql.Timestamp;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class PrivateDataStorageListener {

    @PrePersist
    public void preCreatePrivateDataStorage(XMPPPrivateDataStorage xmppPrivateDataStorage) {
        xmppPrivateDataStorage.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    }

    @PreUpdate
    public void preUpdatePrivateDataStorage(XMPPPrivateDataStorage xmppPrivateDataStorage) {
        xmppPrivateDataStorage.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
    }


}
