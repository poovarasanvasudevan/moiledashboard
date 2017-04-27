package com.poovarasan.socket.model;

import com.poovarasan.models.User;

import java.sql.Timestamp;

/**
 * Created by poovarasanv on 26/4/17.
 * Project : mobiledashboard
 */
public class MessageFormat {
    private User from;
    private User to;
    private Message message;
    private Timestamp timestamp;

    public MessageFormat(User from, User to, Message message, Timestamp timestamp) {
        this.from = from;
        this.to = to;
        this.message = message;
        this.timestamp = timestamp;
    }

    public User getFrom() {
        return from;
    }

    public void setFrom(User from) {
        this.from = from;
    }

    public User getTo() {
        return to;
    }

    public void setTo(User to) {
        this.to = to;
    }

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }
}
