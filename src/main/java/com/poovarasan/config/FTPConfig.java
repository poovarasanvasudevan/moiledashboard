package com.poovarasan.config;

import com.poovarasan.filter.LocalhostVerifier;
import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTPSClient;
import org.apache.commons.net.ftp.FTPSTrustManager;
import org.apache.ftpserver.FtpServerFactory;
import org.apache.ftpserver.ftplet.UserManager;
import org.apache.ftpserver.listener.ListenerFactory;
import org.apache.ftpserver.ssl.SslConfigurationFactory;
import org.apache.ftpserver.usermanager.PropertiesUserManagerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.io.PrintWriter;

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

    @Value("classpath:keys/server.jks")
    Resource keyStore;

    @Value("${app.key.password}")
    String keyPassword;

    @Value("classpath:ftp/ftp.properties")
    Resource ftpResource;


    @Bean
    public UserManager userManager() {
        PropertiesUserManagerFactory propertiesUserManagerFactory = new PropertiesUserManagerFactory();
        propertiesUserManagerFactory.setAdminName("ADMIN");
        try {
            propertiesUserManagerFactory.setFile(ftpResource.getFile());
        } catch (IOException e) {
            e.printStackTrace();
        }

        return propertiesUserManagerFactory.createUserManager();
    }


    @Bean
    public FtpServerFactory ftpServerFactory() {
        ListenerFactory factory = new ListenerFactory();
        factory.setPort(ftpPort);

        try {
            SslConfigurationFactory ssl = new SslConfigurationFactory();
            ssl.setKeystoreFile(keyStore.getFile());
            ssl.setKeystorePassword(keyPassword);
            factory.setSslConfiguration(ssl.createSslConfiguration());
            //factory.setImplicitSsl(true);

        } catch (IOException e) {
            e.printStackTrace();
        }

        FtpServerFactory ftpServerFactory = new FtpServerFactory();
        ftpServerFactory.addListener("default", factory.createListener());
        return ftpServerFactory;
    }


    @Bean
    public FTPSClient ftpClient() {

        FTPSClient ftpClient = new FTPSClient();
        ftpClient.setHostnameVerifier(new LocalhostVerifier());
        ftpClient.setTrustManager(new FTPSTrustManager());
        ftpClient.setUseClientMode(true);
        ftpClient.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));

        return ftpClient;
    }
}
