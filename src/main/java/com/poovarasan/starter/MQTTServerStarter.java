package com.poovarasan.starter;

import com.poovarasan.listeners.MQTTPublishListener;
import io.moquette.interception.InterceptHandler;
import io.moquette.server.Server;
import io.moquette.server.config.FileResourceLoader;
import io.moquette.server.config.IConfig;
import io.moquette.server.config.IResourceLoader;
import io.moquette.server.config.ResourceLoaderConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;

import javax.annotation.PreDestroy;
import java.util.List;

import static java.util.Arrays.asList;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */

@Component
public class MQTTServerStarter implements ApplicationRunner {

    @Value("classpath:mqtt/moquette.conf")
    Resource config;

    private Server mqttBroker;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        IResourceLoader fileResourceLoader = new FileResourceLoader(config.getFile());
        final IConfig classPathConfig = new ResourceLoaderConfig(fileResourceLoader);

        mqttBroker = new Server();

        List<? extends InterceptHandler> userHandlers = asList(new MQTTPublishListener());

        mqttBroker.startServer(classPathConfig, userHandlers);
        System.out.println("MQTT Server Started");
    }

    @PreDestroy
    public void beforeShutdown() {
        mqttBroker.stopServer();
    }
}
