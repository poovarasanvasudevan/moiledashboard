package com.poovarasan.repository;

import com.poovarasan.base.BaseRepository;
import com.poovarasan.models.Apps;
import com.poovarasan.models.Role;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@RepositoryRestResource(collectionResourceRel = "roles", path = "roles")
public interface AppsRepository extends BaseRepository<Apps, String> {
}
