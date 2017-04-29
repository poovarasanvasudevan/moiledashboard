package com.poovarasan.rtc;

import com.poovarasan.rtc.handler.VideoHandler;
import org.kurento.client.KurentoClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 * Created by iampo on 4/29/2017.
 */
@Configuration
public class WebRTCConfig implements WebSocketConfigurer{

    private final static String DEFAULT_KMS_WS_URI = "ws://localhost:8888/kurento";


    @Bean
    public VideoHandler videoHandler() {
        return new VideoHandler();
    }

    @Bean
    public KurentoClient kurentoClient() {
        return KurentoClient.create(System.getProperty("kms.url", DEFAULT_KMS_WS_URI));
    }

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry webSocketHandlerRegistry) {
        webSocketHandlerRegistry.addHandler(videoHandler(), "/video");
    }
}
