package com.poovarasan.listeners;

import org.nextrtc.signalingserver.api.NextRTCHandler;
import org.nextrtc.signalingserver.api.annotation.NextRTCEventListener;
import org.nextrtc.signalingserver.api.dto.NextRTCEvent;
import org.springframework.stereotype.Component;

import static org.nextrtc.signalingserver.api.NextRTCEvents.UNEXPECTED_SITUATION;

/**
 * Created by poovarasanv on 26/4/17.
 * Project : mobiledashboard
 */


@Component
@NextRTCEventListener(UNEXPECTED_SITUATION)
public class WebRTCListener implements NextRTCHandler {
    @Override
    public void handleEvent(NextRTCEvent nextRTCEvent) {
        
    }
}
