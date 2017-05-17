package com.poovarasan.managers;

import org.apache.vysper.xmpp.addressing.Entity;
import org.apache.vysper.xmpp.modules.roster.Roster;
import org.apache.vysper.xmpp.modules.roster.persistence.AbstractRosterManager;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class XMPPRosterManager extends AbstractRosterManager {

    @Override
    protected Roster retrieveRosterInternal(Entity entity) {
        return null;
    }

    @Override
    protected Roster addNewRosterInternal(Entity entity) {
        return null;
    }
}
