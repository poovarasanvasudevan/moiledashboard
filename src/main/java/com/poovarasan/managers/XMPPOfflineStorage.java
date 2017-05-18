package com.poovarasan.managers;

import org.apache.vysper.xmpp.modules.extension.xep0160_offline_storage.AbstractOfflineStorageProvider;
import org.apache.vysper.xmpp.stanza.Stanza;
import org.mapdb.DB;

import java.util.Collection;
import java.util.List;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class XMPPOfflineStorage extends AbstractOfflineStorageProvider {

    private DB db;

    public XMPPOfflineStorage(DB db) {
        this.db = db;
    }

    @Override
    protected void storeStanza(Stanza stanza) {
        List<Stanza> allstanza = (List<Stanza>) db.getHashMap("xmpp_offline_storage").get(stanza.getTo().getNode());
        allstanza.add(stanza);
        db.getHashMap("xmpp_offline_storage").put(stanza.getTo().getNode(), allstanza);
    }

    @Override
    public Collection<Stanza> getStanzasForBareJID(String s) {
        return (List<Stanza>) db.getHashMap("xmpp_offline_storage").get(s);
    }
}
