Ticket Generation (SSL tickets)
---------------------------------------------------------------
#### Tomcat Server
```
keytool -genkey -alias tomcat -keyalg RSA -keystore server.jks
```
#### Mqtt Server
```
keytool -export -alias tomcat -keystore server.jks -file mqttserver.crt
```

#### Mqtt Client
```
keytool -keystore mqttclient.jks -genkey -keyalg RSA
keytool -keystore mqttclient.jks -import -alias tomcat -file mqttserver.crt -trustcacerts
```

#### SSH Keystore
```
keytool -genkey -keystore ./sshkey -keyalg RSA
```

###Java Config For Client SSL Mqtt Ticket 

```
public SSLSocketFactory configureSSLSocketFactory() {
    KeyStore ks = KeyStore.getInstance("JKS");
    InputStream jksInputStream = new FileInputStream("mqttclient.jks")
    ks.load(jksInputStream, "password".toCharArray());

    KeyManagerFactory kmf = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
    kmf.init(ks, "password".toCharArray());

    TrustManagerFactory tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    tmf.init(ks);

    SSLContext sc = SSLContext.getInstance("TLS");
    TrustManager[] trustManagers = tmf.getTrustManagers();
    sc.init(kmf.getKeyManagers(), trustManagers, null);

    SSLSocketFactory ssf = sc.getSocketFactory();
    return ssf;
}

String tmpDir = System.getProperty("java.io.tmpdir");
MqttDefaultFilePersistence dataStore = new MqttDefaultFilePersistence(tmpDir);

MqttClient client = new MqttClient("ssl://localhost:8883", "SSLClientTest", dataStore);
SSLSocketFactory ssf = configureSSLSocketFactory();
MqttConnectOptions options = new MqttConnectOptions();
options.setSocketFactory(ssf);
client.connect(options);
```