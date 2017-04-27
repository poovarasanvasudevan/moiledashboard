package com.poovarasan.base;

import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.util.UUID;

/**
 * Created by poovarasanv on 17/4/17.
 * Project : mobiledashboard
 */
@MappedSuperclass
public class AbstractBaseEntity implements Serializable {

    @Id
    private String id;


    public AbstractBaseEntity() {
        this.id = UUID.randomUUID().toString();
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AbstractBaseEntity)) return false;

        AbstractBaseEntity that = (AbstractBaseEntity) o;

        return id != null ? id.equals(that.id) : that.id == null;
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }
}
