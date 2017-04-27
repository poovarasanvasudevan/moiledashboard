package com.poovarasan.socket.handler;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by poovarasanv on 18/4/17.
 * Project : mobiledashboard
 */

public class ProgressHandler extends TextWebSocketHandler {

    private List<WebSocketSession> webSocketSessions = new ArrayList<>();

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        System.out.print("Web Socket Emitted : ===============");
        session.sendMessage(new TextMessage("Hello World"));
    }

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        webSocketSessions.add(session);
        super.afterConnectionEstablished(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);
        webSocketSessions.remove(session);
    }

    public void sendMessage(String message) {
        System.out.println("Size : " + webSocketSessions.size());
        for (WebSocketSession webSocketSession: webSocketSessions) {

            System.out.println("Socket : " + webSocketSession.getId());
            try {
                webSocketSession.sendMessage(new TextMessage("Hello World"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
