package com.poovarasan;

import org.nextrtc.signalingserver.NextRTCConfig;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;
import org.springframework.integration.annotation.IntegrationComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Created by poovarasanv on 20/4/17.
 * Project : mobiledashboard
 */
@Configuration
@EnableScheduling
@EnableSwagger2
@EnableCaching
@EnableWebSocket
@IntegrationComponentScan
@EnableAspectJAutoProxy
@Import(
        {
                springfox.documentation.spring.data.rest.configuration.SpringDataRestConfiguration.class,
                NextRTCConfig.class
        }
)
public class AppConfig {


}
