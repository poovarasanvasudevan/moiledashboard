package com.poovarasan.socket.model;

/**
 * Created by poovarasanv on 12/4/17.
 */
public class OutputMessage {
    String form;
    String message;
    String time;

    public OutputMessage(String form, String message, String time) {
        this.form = form;
        this.message = message;
        this.time = time;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
