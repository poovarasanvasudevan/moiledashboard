package com.poovarasan.service;

import com.poovarasan.models.User;
import com.poovarasan.socket.model.MessageModel;

/**
 * Created by poovarasanv on 12/4/17.
 */
public interface UserService {
    void save(User user);
    User findByUsername(String username);
    void sendMessage(MessageModel messageModel);
}
