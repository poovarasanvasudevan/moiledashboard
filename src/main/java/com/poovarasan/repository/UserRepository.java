package com.poovarasan.repository;

import com.poovarasan.base.BaseRepository;
import com.poovarasan.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import springfox.documentation.annotations.ApiIgnore;

import java.util.Optional;


/**
 * Created by poovarasanv on 12/4/17.
 */
@RepositoryRestResource(collectionResourceRel = "users", path = "users")
public interface UserRepository extends BaseRepository<User, String> {
    /**
     * @param username
     * @return User
     */
    @ApiIgnore
    User findByUsername(String username);


    /**
     * @param apiKey
     * @return User
     */
    @ApiIgnore
    Optional<User> findByApiKey(String apiKey);
}
