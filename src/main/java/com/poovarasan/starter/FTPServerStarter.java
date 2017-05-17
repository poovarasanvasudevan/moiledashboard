package com.poovarasan.starter;

import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTPSClient;
import org.apache.commons.net.ftp.FTPSTrustManager;
import org.apache.ftpserver.FtpServer;
import org.apache.ftpserver.FtpServerFactory;
import org.apache.ftpserver.ftplet.FtpException;
import org.apache.ftpserver.ftplet.User;
import org.apache.ftpserver.ftplet.UserManager;
import org.apache.ftpserver.usermanager.UserFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import javax.annotation.PreDestroy;
import java.io.PrintWriter;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@Component
public class FTPServerStarter implements ApplicationRunner {

    private final FtpServerFactory ftpServerFactory;
    private final UserManager userManager;
    private final FTPSClient ftpClient;

    @Value("${app.ftp.storage}")
    String ftpStorage;

    @Value("${app.ftp.port}")
    Integer ftpPort;

    @Value("${app.ftp.username}")
    String ftpUsername;

    @Value("${app.ftp.password}")
    String ftpPassword;

    @Value("${app.ftp.host}")
    String ftpHost;

    private FtpServer ftpServer;

    @Autowired
    public FTPServerStarter(FtpServerFactory ftpServerFactory, UserManager userManager, FTPSClient ftpClient) {
        this.ftpServerFactory = ftpServerFactory;
        this.userManager = userManager;
        this.ftpClient = ftpClient;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        try {

            UserFactory userFact = new UserFactory();
            userFact.setName(ftpUsername);
            userFact.setPassword(ftpPassword);
            userFact.setHomeDirectory(ftpStorage);
            User user = userFact.createUser();
            userManager.save(user);

            ftpServerFactory.setUserManager(userManager);

            ftpServer = ftpServerFactory.createServer();


            if (ftpServer.isStopped()) {
                ftpServer.start();
                System.out.print("FTP : Server Started");
            } else if (ftpServer.isSuspended()) {
                ftpServer.resume();
                System.out.print("FTP : Server Resumed");
            } else {
                ftpServer.start();
                System.out.print("FTP : Server Started");
            }


            ftpClient.connect(ftpHost,ftpPort);
            ftpClient.login(ftpUsername,ftpPassword);


            System.out.print("FTP : Client Connected");
        } catch (FtpException e) {
            //e.printStackTrace();
        }
    }

    @PreDestroy
    public void beforeShutdown() {
        ftpServer.stop();
    }
}
