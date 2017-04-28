package com.poovarasan.repository;

import com.poovarasan.base.BaseRepository;
import com.poovarasan.models.Apps;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.transaction.annotation.Transactional;
import springfox.documentation.annotations.ApiIgnore;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@RepositoryRestResource(collectionResourceRel = "roles", path = "roles")
public interface AppsRepository extends BaseRepository<Apps, String> {

    @ApiIgnore
    @Modifying
    @Transactional
    @Query(value = "update Apps a set a.active=false where a.id= :delappid")
    void softDelete(@Param("delappid") String delappid);

}
