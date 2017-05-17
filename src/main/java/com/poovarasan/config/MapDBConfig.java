package com.poovarasan.config;

import org.mapdb.DB;
import org.mapdb.DBMaker;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

import java.io.IOException;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
@Configuration
public class MapDBConfig {

    @Value("classpath:db/cermap.mapdb")
    Resource dbPath;

    @Bean
    public DB db() {
        try {
            return DBMaker
                    .newFileDB(dbPath.getFile())
                    .mmapFileEnable()
                    .mmapFileEnableIfSupported()
                    .make();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
