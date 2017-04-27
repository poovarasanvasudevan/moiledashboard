package com.poovarasan.starter;

import org.apache.ftpserver.FtpServer;
import org.apache.ftpserver.ftplet.FtpException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

/**
 * Created by poovarasanv on 27/4/17.
 * Project : mobiledashboard
 */
@Component
public class FTPServerStarter implements ApplicationRunner {

    private final FtpServer ftpServer;

    @Autowired
    public FTPServerStarter(FtpServer ftpServer) {
        this.ftpServer = ftpServer;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        try {
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
        } catch (FtpException e) {
            e.printStackTrace();
        }
    }
}
