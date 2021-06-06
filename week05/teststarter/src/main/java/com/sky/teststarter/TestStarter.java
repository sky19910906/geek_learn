package com.sky.teststarter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.sky.teststarter.config.Config;
import com.sky.teststarter.model.Klass;
import com.sky.teststarter.model.School;
import com.sky.teststarter.model.Student;

@Configuration
@EnableConfigurationProperties(Config.class)
public class TestStarter {
	
	
	@Autowired
	private Config config;

	@Bean
	public Student createStu() {
		return new Student(1, "好学生");
	}
	
	@Bean
	public Klass createKlass() {
		Klass klass = new Klass();
		klass.setClassname(config.getClassname());
		klass.setClassdesc(config.getClassdesc());
		return klass ;
	}
	
	@Bean
	public School createSchool() {
		return new School();
	}
	

}
