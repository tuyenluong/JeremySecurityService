package com.jeremy.spring.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@EnableWebSecurity
@EnableJpaRepositories("com.jeremy.spring.security.repository")
@EntityScan("com.jeremy.spring.security.model")
@SpringBootApplication
public class JeremySpringSecurityService {

	public static void main(String[] args) {
		SpringApplication.run(JeremySpringSecurityService.class, args);
	}

}
