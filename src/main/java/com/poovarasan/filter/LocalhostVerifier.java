package com.poovarasan.filter;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
public class LocalhostVerifier implements HostnameVerifier {
    @Override
    public boolean verify(String s, SSLSession sslSession) {
        return s.contains("localhost");
    }
}
