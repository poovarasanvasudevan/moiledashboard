package com.poovarasan.repository;

import com.poovarasan.base.BaseRepository;
import com.poovarasan.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import springfox.documentation.annotations.ApiIgnore;

import java.util.Optional;


/**
 * Created by poovarasanv on 12/4/17.
 * Project : mobiledashboard
 */
@RepositoryRestResource(collectionResourceRel = "users", path = "users")
public interface UserRepository extends BaseRepository<User, String> {
    /**
     * @param username
     * @return User
     */
    @ApiIgnore
    Optional<User> findByUsername(String username);


    /**
     * @param apiKey
     * @return User
     */
    @ApiIgnore
    Optional<User> findByApiKey(String apiKey);


    @ApiIgnore
    @Modifying
    @Transactional
    @Query(value = "update User u set u.active=false where u.id= :deluser")
    void softDelete(@Param("deluser") String userid);
}
