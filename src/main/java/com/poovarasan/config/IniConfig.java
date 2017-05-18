package com.poovarasan.config;

import org.ini4j.Wini;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * Created by poovarasanv on 18/5/17.
 * Project : mobiledashboard
 */
@Component
public class IniConfig {

    @Value("classpath:ini/wini.ini")
    Resource resource;

    @Bean
    public Wini wini() {
        try {
            Wini wini = new Wini(resource.getFile());
            
            return wini;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
