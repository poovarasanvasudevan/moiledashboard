package com.poovarasan.socket.model;

import com.poovarasan.models.User;

/**
 * Created by poovarasanv on 20/4/17.
 * Project : mobiledashboard
 */
public class MessageModel {
    String message;
    User user;

    public MessageModel(String message, User user) {
        this.message = message;
        this.user = user;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
