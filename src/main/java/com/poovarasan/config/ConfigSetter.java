package com.poovarasan.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by poovarasanv on 21/4/17.
 * Project : mobiledashboard
 */
@Configuration
public class ConfigSetter {

    @Value("${app.socket.userprefix}")
    String userSocketPrefix;

    @Value("${app.socket.appdestprefix}")
    String appDestPrefix;


    @Value("${app.socket.user.notification}")
    String userSocketNotificationPrefix;

    @Bean
    public String appDestPrefix() {
        return appDestPrefix;
    }

    @Bean
    public String userSocketPrefix() {
        return userSocketPrefix;
    }


    @Bean
    public String userSocketNotificationPrefix() {
        return userSocketNotificationPrefix;
    }
}
