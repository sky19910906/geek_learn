package com.sky.teststarter.config;

import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
@EnableConfigurationProperties(Config.class)
public class TestConfigration {

	@Bean
	public Config create() {
		return new Config();
	}	
}
