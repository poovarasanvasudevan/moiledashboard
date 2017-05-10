package com.poovarasan.repository;

import com.poovarasan.base.BaseRepository;
import com.poovarasan.models.XMPPPrivateDataStorage;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.Optional;

/**
 * Created by poovarasanv on 10/5/17.
 * Project : mobiledashboard
 */
@RepositoryRestResource(collectionResourceRel = "xmpp", path = "xmpp")
public interface PrivateStorageRepository extends BaseRepository<XMPPPrivateDataStorage, String> {

    Optional<XMPPPrivateDataStorage> findByNodeAndKey(String node, String key);
}
