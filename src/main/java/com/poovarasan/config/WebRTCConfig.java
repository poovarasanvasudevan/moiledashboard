package com.poovarasan.config;

import org.nextrtc.signalingserver.api.NextRTCEndpoint;
import org.nextrtc.signalingserver.codec.MessageDecoder;
import org.nextrtc.signalingserver.codec.MessageEncoder;
import org.springframework.context.annotation.Configuration;

import javax.websocket.server.ServerEndpoint;

/**
 * Created by poovarasanv on 26/4/17.
 * Project : mobiledashboard
 */


@ServerEndpoint(value = "/rtc", encoders = MessageEncoder.class, decoders = MessageDecoder.class)
public class WebRTCConfig extends NextRTCEndpoint {
}
