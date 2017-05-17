package com.poovarasan.config;

import org.apache.vysper.xmpp.addressing.Entity;
import org.apache.vysper.xmpp.modules.roster.MutableRoster;
import org.apache.vysper.xmpp.modules.roster.Roster;
import org.apache.vysper.xmpp.modules.roster.persistence.AbstractRosterManager;
import org.mapdb.DB;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
public class DBRosterManager extends AbstractRosterManager {

    private DB db;

    public DBRosterManager(DB db) {
        this.db = db;
    }

    @Override
    protected Roster retrieveRosterInternal(Entity entity) {
        if (!db.getHashMap("roster_manager").containsKey(entity)) {
            db.getHashMap("roster_manager").put(entity, new MutableRoster());
        }

        return (Roster) db.getHashMap("roster_manager").get(entity);
    }

    @Override
    protected Roster addNewRosterInternal(Entity entity) {
        MutableRoster mutableRoster = new MutableRoster();
        db.getHashMap("roster_manager").put(entity, mutableRoster);
        return mutableRoster;
    }
}
