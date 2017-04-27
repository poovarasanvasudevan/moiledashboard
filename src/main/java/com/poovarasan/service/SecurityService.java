package com.poovarasan.service;

/**
 * Created by poovarasanv on 12/4/17.
 */
public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}
