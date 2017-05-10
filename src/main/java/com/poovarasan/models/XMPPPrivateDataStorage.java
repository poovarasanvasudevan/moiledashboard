package com.poovarasan.models;

import com.poovarasan.listeners.PrivateDataStorageListener;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
@Entity
@EntityListeners(value = {PrivateDataStorageListener.class})
public class XMPPPrivateDataStorage {


    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",
            strategy = "uuid")
    private String id;


    private String node;

    @Column(name = "keyCol")
    private String key;

    @Column(columnDefinition = "TEXT")
    private String data;

    private Timestamp createdDate;
    private Timestamp updatedDate;


    public String getNode() {
        return node;
    }

    public void setNode(String node) {
        this.node = node;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public Timestamp getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Timestamp updatedDate) {
        this.updatedDate = updatedDate;
    }


}
