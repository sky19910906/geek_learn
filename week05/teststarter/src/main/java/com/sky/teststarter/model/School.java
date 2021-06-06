package com.sky.teststarter.model;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.Data;

@Data
public class School {
    
    @Autowired(required = true) //primary
    Klass class1;
    
}
