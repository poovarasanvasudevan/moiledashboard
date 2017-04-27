package com.poovarasan.controllers.socket;

import com.poovarasan.socket.model.Message;
import com.poovarasan.socket.model.OutputMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by poovarasanv on 13/4/17.
 * Project : mobiledashboard
 */
@RestController
public class SocketController {

    @MessageMapping("/s/chat")
    @SendTo("/topic/messages")
    public OutputMessage send(Message message) throws Exception {
        String time = new SimpleDateFormat("HH:mm").format(new Date());
        System.out.println("Message Got : " + message.getText());
        return new OutputMessage(message.getFrom(), message.getText(), time);
    }

    @SendTo("#{@userSocketPrefix}")
    public OutputMessage sendToUser(Message message) throws Exception {
        String time = new SimpleDateFormat("HH:mm").format(new Date());
        System.out.println("Message Got : " + message.getText());
        return new OutputMessage(message.getFrom(), message.getText(), time);
    }

//    @SendTo("#{@userSocketNotificationPrefix}")
//    public OutputMessage sendNotificationToUser(Message message) throws Exception {
//        String time = new SimpleDateFormat("HH:mm").format(new Date());
//        System.out.println("Message Got : " + message.getText());
//        return new OutputMessage(message.getFrom(), message.getText(), time);
//    }
}
