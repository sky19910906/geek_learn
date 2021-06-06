package com.sky.teststarter.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Klass { 
    
	private String classname;
	private String classdesc;
	
	@Autowired
    List<Student> students;
    
}
