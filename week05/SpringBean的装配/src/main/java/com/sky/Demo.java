package com.sky;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Demo {
    
	public static void main(String[] args) {
        
        ApplicationContext context = new ClassPathXmlApplicationContext("sky-application-context.xml");
        Good good1 = (Good)context.getBean("good1");
        System.out.println(good1.getName());
        Order order1 = (Order)context.getBean("order1");
        System.out.println(order1.getGood().getName());
        Order order2 = (Order)context.getBean("order2");
        System.out.println(order2.getGood().getName());
        Order order3 = (Order)context.getBean("order3");
        System.out.println(order3.getGood().getName());
        Order order4 = (Order)context.getBean("order4");
        System.out.println(order4.getGood().getName());
        Order order5 = (Order)context.getBean("order5");
        System.out.println(order5.getGood().getName());
//      注解的话这里注释说明
//    	1、@Autowired 用于set、用于构造函数、用于属性
//    	2、@Qualifier - byname
//    	3、@Value("") -- 可使用表达式
//      4、@Configrationproperties -- springboot中属性的自动装配
    }
}
