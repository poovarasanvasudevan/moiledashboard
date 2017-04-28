package com.poovarasan.config;

import com.enterprisedt.net.ftp.FTPClient;
import com.enterprisedt.net.ftp.FTPException;
import org.apache.ftpserver.FtpServerFactory;
import org.apache.ftpserver.ftplet.UserManager;
import org.apache.ftpserver.listener.ListenerFactory;
import org.apache.ftpserver.usermanager.PropertiesUserManagerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import java.io.IOException;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@Configuration
public class FTPConfig {

    @Value("${app.ftp.port}")
    Integer ftpPort;

    @Value("${app.ftp.username}")
    String ftpUsername;

    @Value("${app.ftp.password}")
    String ftpPassword;

    @Value("${app.ftp.host}")
    String ftpHost;


    private final ResourceLoader resourceLoader;

    @Autowired
    public FTPConfig(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }


    @Bean
    public UserManager userManager() {
        PropertiesUserManagerFactory propertiesUserManagerFactory = new PropertiesUserManagerFactory();
        propertiesUserManagerFactory.setAdminName("ADMIN");

        Resource resource = resourceLoader.getResource("classpath:/ftp/ftp.properties");
        try {
            propertiesUserManagerFactory.setFile(resource.getFile());
        } catch (IOException e) {
            e.printStackTrace();
        }

        return propertiesUserManagerFactory.createUserManager();
    }


    @Bean
    public FtpServerFactory ftpServerFactory() {
        ListenerFactory factory = new ListenerFactory();
        factory.setPort(ftpPort);
        FtpServerFactory ftpServerFactory = new FtpServerFactory();
        ftpServerFactory.addListener("default", factory.createListener());
        return ftpServerFactory;
    }


    @Bean
    public FTPClient ftpClient() {
        FTPClient ftpClient = new FTPClient();
        try {
            ftpClient.setRemoteHost(ftpHost);
            ftpClient.setRemotePort(ftpPort);

        } catch (IOException | FTPException e) {
            e.printStackTrace();
        }

        return ftpClient;
    }
}
