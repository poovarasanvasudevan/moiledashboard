package com.poovarasan.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.poovarasan.listeners.AppsListener;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.sql.Timestamp;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@Entity
@EntityListeners(value = {AppsListener.class})
@Table(name = "apps")
public class Apps {

    /**
     * Unique User ID.
     */
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",
            strategy = "uuid")
    private String id;


    @NotEmpty
    @Length(min = 10, max = 30)
    private String name;

    @NotEmpty
    @Length(min = 10)
    private String description;

    @Column(unique = true)
    private String appKey;

    @ManyToOne
    @JoinColumn(name = "apps_user_id")
    @JsonIgnore
    private User createdBy;


    private Timestamp createdDate;
    private Timestamp updatedDate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAppKey() {
        return appKey;
    }

    public void setAppKey(String appKey) {
        this.appKey = appKey;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
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
