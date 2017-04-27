package com.poovarasan.listeners;

import com.poovarasan.models.Apps;
import org.apache.commons.lang3.RandomStringUtils;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.sql.Timestamp;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
public class AppsListener {

    @PrePersist
    public void appsPrePresist(Apps apps) {
        apps.setAppKey(RandomStringUtils.randomAlphanumeric(40));
        apps.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    }

    @PreUpdate
    public void appsPreUpdate(Apps apps) {
        apps.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
    }
}
