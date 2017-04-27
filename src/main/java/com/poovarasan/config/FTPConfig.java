package com.poovarasan.config;

import org.apache.ftpserver.FtpServer;
import org.apache.ftpserver.FtpServerFactory;
import org.apache.ftpserver.listener.Listener;
import org.apache.ftpserver.listener.ListenerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@Component
public class FTPConfig {
    @Bean
    public FtpServer ftpServerFactory() {
        ListenerFactory factory = new ListenerFactory();
        factory.setPort(2290);
        FtpServerFactory ftpServerFactory = new FtpServerFactory();
        ftpServerFactory.addListener("default", factory.createListener());
        return ftpServerFactory.createServer();
    }
}
