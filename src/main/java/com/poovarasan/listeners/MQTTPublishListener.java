package com.poovarasan.listeners;

import io.moquette.interception.AbstractInterceptHandler;
import io.moquette.interception.messages.*;

/**
 * Created by poovarasanv on 17/5/17.
 * Project : mobiledashboard
 */
public class MQTTPublishListener extends AbstractInterceptHandler {

    public MQTTPublishListener() {
        super();
    }

    @Override
    public void onConnect(InterceptConnectMessage msg) {
        super.onConnect(msg);
    }

    @Override
    public void onDisconnect(InterceptDisconnectMessage msg) {
        super.onDisconnect(msg);
    }

    @Override
    public void onConnectionLost(InterceptConnectionLostMessage msg) {
        super.onConnectionLost(msg);
    }

    @Override
    public void onPublish(InterceptPublishMessage msg) {
        super.onPublish(msg);
    }

    @Override
    public void onSubscribe(InterceptSubscribeMessage msg) {
        super.onSubscribe(msg);
    }

    @Override
    public void onUnsubscribe(InterceptUnsubscribeMessage msg) {
        super.onUnsubscribe(msg);
    }

    @Override
    public void onMessageAcknowledged(InterceptAcknowledgedMessage msg) {
        super.onMessageAcknowledged(msg);
    }
}
