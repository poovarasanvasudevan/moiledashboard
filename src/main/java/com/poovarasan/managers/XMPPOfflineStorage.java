package com.poovarasan.managers;

import org.apache.vysper.xmpp.modules.extension.xep0160_offline_storage.AbstractOfflineStorageProvider;
import org.apache.vysper.xmpp.stanza.Stanza;

import java.util.Collection;
import java.util.concurrent.ConcurrentMap;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class XMPPOfflineStorage extends AbstractOfflineStorageProvider {

    private ConcurrentMap<String, Stanza> stringStanzaConcurrentMap;

    public XMPPOfflineStorage(ConcurrentMap<String, Stanza> stringStanzaConcurrentMap) {
        this.stringStanzaConcurrentMap = stringStanzaConcurrentMap;
    }

    @Override
    protected void storeStanza(Stanza stanza) {

    }

    @Override
    public Collection<Stanza> getStanzasForBareJID(String s) {
        return null;
    }
}
