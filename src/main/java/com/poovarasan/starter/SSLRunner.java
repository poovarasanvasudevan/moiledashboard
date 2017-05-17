package com.poovarasan.starter;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
@Component
public class SSLRunner implements ApplicationRunner {
    @Override
    public void run(ApplicationArguments args) throws Exception {
        javax.net.ssl.HttpsURLConnection.setDefaultHostnameVerifier((hostname, sslSession) -> hostname.equals("localhost"));
    }
}
