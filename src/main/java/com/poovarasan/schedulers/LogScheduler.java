package com.poovarasan.schedulers;

import com.poovarasan.socket.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by poovarasanv on 13/4/17.
 * Project : mobiledashboard
 */
@Component
public class LogScheduler {
    private static final SimpleDateFormat dateFormat =
            new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");


    @Scheduled(fixedRate = 10000)
    public void sendMailToCustomers() {
    }
}
