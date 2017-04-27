package com.poovarasan.repository;

import com.poovarasan.base.BaseRepository;
import com.poovarasan.models.Role;
import com.poovarasan.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import springfox.documentation.annotations.ApiIgnore;

import java.util.Set;


/**
 * Created by poovarasanv on 12/4/17.
 */
@RepositoryRestResource(collectionResourceRel = "roles", path = "roles")
public interface RoleRepository extends BaseRepository<Role, String> {
    @ApiIgnore
    Role findByName(String role);
}
