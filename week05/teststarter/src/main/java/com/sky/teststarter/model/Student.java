package com.sky.teststarter.model;


import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student implements Serializable{

	private static final long serialVersionUID = 2229701065480884812L;
	
	private int id;
    private String name;

}
