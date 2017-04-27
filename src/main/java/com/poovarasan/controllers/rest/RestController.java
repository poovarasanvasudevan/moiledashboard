package com.poovarasan.controllers.rest;

import com.poovarasan.controllers.rest.models.ResponseModel;
import com.poovarasan.models.User;
import com.poovarasan.repository.UserRepository;
import com.poovarasan.socket.model.Message;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by poovarasanv on 12/4/17.
 * Project : mobiledashboard
 */
@Api(
        basePath = "/api",
        value = "Rest Operations",
        description = "Operations with Models through Rest",
        produces = "application/json",
        tags = {"Socket Related Services"}
)
@org.springframework.web.bind.annotation.RestController
@RequestMapping(path = "/api")
public class RestController {

    private final UserRepository userRepository;
    private final SimpMessagingTemplate simpMessagingTemplate;

    @Autowired
    public RestController(UserRepository userRepository, SimpMessagingTemplate simpMessagingTemplate) {
        this.userRepository = userRepository;
        this.simpMessagingTemplate = simpMessagingTemplate;
    }


    @Deprecated
    @RequestMapping(path = "/stomp/ping/{userid}", method = RequestMethod.POST)
    @ApiOperation(value = "Ping the MQTT User", notes = "Sends Simple Messsage To topic of mqtt User : @This API is DEPRECATED instead Use /api/user/message/{username} Call")
    public ResponseModel sendtoUser(@PathVariable("userid") String userid, @RequestBody String messageToSend) {
        Message message = new Message();
        message.setText(messageToSend);
        simpMessagingTemplate.convertAndSendToUser(userid, "/queue/search", message);
        return new ResponseModel(100, "sent");
    }


    @RequestMapping(path = "/stomp/ping", method = RequestMethod.POST)
    @ApiOperation(value = "Ping the Websocket User", notes = "Send Simple Message to All the Connected User")
    public String pingSocket(@RequestBody String messageToSend) {
        Message message = new Message();
        message.setText(messageToSend);
        simpMessagingTemplate.convertAndSend("/topic/messages", message);
        return "test";
    }
}
