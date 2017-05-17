package com.poovarasan.config;

import org.apache.commons.codec.binary.Base64;
import org.apache.sshd.server.auth.pubkey.PublickeyAuthenticator;
import org.apache.sshd.server.session.ServerSession;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
public class SSHPublicKeyAuthenticator implements PublickeyAuthenticator {

    private String knownKey;

    public SSHPublicKeyAuthenticator(String knownKey) {
        this.knownKey = knownKey;
    }

    @Override
    public boolean authenticate(String s, PublicKey publicKey, ServerSession serverSession) {
        if (publicKey instanceof RSAPublicKey) {
            String s1 = new String(encode((RSAPublicKey) publicKey));
            String s2 = new String(Base64.decodeBase64(knownKey.getBytes()));
            return s1.equals(s2); //Returns true if the key matches our known key, this allows auth to proceed.
        }
        return false; //Doesn't handle other key types currently.

    }

    private static byte[] encode(RSAPublicKey key) {
        try {
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            byte[] name = "ssh-rsa".getBytes("US-ASCII");
            write(name, buf);
            write(key.getPublicExponent().toByteArray(), buf);
            write(key.getModulus().toByteArray(), buf);
            return buf.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private static void write(byte[] str, OutputStream os) throws IOException {
        for (int shift = 24; shift >= 0; shift -= 8)
            os.write((str.length >>> shift) & 0xFF);
        os.write(str);
    }
}
