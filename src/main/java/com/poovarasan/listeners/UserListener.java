package com.poovarasan.listeners;

import com.poovarasan.models.User;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.UUID;

/**
 * Created by poovarasanv on 13/4/17.
 */
public class UserListener {

    @PrePersist
    public void userPrePersist(User ob) {
        ob.setApiKey(UUID.randomUUID().toString());
        ob.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    }

    @PreUpdate
    public void userPreUpdate(User ob) {
        ob.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
    }
}
