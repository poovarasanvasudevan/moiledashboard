package com.poovarasan.managers;

import com.poovarasan.models.User;
import com.poovarasan.repository.UserRepository;
import org.apache.vysper.xmpp.addressing.Entity;
import org.apache.vysper.xmpp.modules.extension.xep0054_vcardtemp.VcardTempPersistenceManager;

import java.util.Optional;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
public class DBVCardManager implements VcardTempPersistenceManager {

    private UserRepository userRepository;

    public DBVCardManager(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public boolean isAvailable() {
        return true;
    }

    @Override
    public String getVcard(Entity entity) {
        System.out.print(entity.getNode());
        Optional<User> user = userRepository.findByUsername(entity.getNode().replace("@localhost", ""));
        if(user.isPresent()) {
            if (null == user.get().getVcard()) {
                return null;
            } else {
                return user.get().getVcard();
            }
        }
        //return user.map(user1 -> user1.getVcard().getXml()).orElse(null);
        return null;
    }

    @Override
    public boolean setVcard(Entity entity, String s) {
        Optional<User> user = userRepository.findByUsername(entity.getNode().replace("@localhost", ""));
        if (user.isPresent()) {
            User user1 = user.get();
            user1.setVcard(s);
            userRepository.save(user1);
            return true;
        }
        return false;
    }
}
