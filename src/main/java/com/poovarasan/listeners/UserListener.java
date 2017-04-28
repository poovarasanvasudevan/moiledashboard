package com.poovarasan.listeners;

import com.poovarasan.models.User;
import org.apache.commons.lang3.RandomStringUtils;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.sql.Timestamp;

/**
 * Created by poovarasanv on 13/4/17.
 * Project : mobiledashboard
 */
public class UserListener {

    @PrePersist
    public void userPrePersist(User ob) {
        ob.setActive(true);
        ob.setApiKey(RandomStringUtils.randomAlphanumeric(32));
        ob.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    }

    @PreUpdate
    public void userPreUpdate(User ob) {
        ob.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
    }
}
