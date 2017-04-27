package com.poovarasan.socket.model;

/**
 * Created by poovarasanv on 26/4/17.
 * Project : mobiledashboard
 */
public class SimpleMessage {
    private  String text;

    public SimpleMessage(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
