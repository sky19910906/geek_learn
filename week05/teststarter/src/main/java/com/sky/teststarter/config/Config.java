package com.sky.teststarter.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Data;

@ConfigurationProperties(prefix = "school.class")
@Data
public class Config {
	
	private String classname = "default";
	
	private String classdesc = "default";
	
}
