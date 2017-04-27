package com.poovarasan.controllers.rest.models;

/**
 * Created by poovarasanv on 20/4/17.
 * Project : mobiledashboard
 */
public class ResponseModel {
    Integer status;
    String message;

    public ResponseModel(Integer status, String message) {
        this.status = status;
        this.message = message;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
