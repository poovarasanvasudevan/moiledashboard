package com.poovarasan.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

import static springfox.documentation.builders.PathSelectors.*;
import static com.google.common.base.Predicates.*;


/**
 * Created by poovarasanv on 13/4/17.
 * Project : mobiledashboard
 */
@Configuration
@EnableAutoConfiguration
public class ApiDocumentationConfiguration {
    @Bean
    public Docket documentation() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(paths())
                .build()
                .apiInfo(metadata());
    }

    private springfox.documentation.service.ApiInfo metadata() {
        return new ApiInfoBuilder()
                .title("REST API documentation")
                .description("see https://github.com/StefanSchubert/sabi")
                .version("1.0")
                .license("MIT Licence (MIT)")
                .licenseUrl("https://github.com/StefanSchubert/sabi/blob/master/LICENSE")
                .contact(new Contact("Poovarasan Vasudevan", "http://shpt.in", "poosan9@gmail.com"))
                .build();
    }


    private com.google.common.base.Predicate<String> paths() {
        return or(
                regex("/api.*"));
    }
}
