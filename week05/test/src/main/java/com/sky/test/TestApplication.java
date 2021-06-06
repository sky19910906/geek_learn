package com.sky.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sky.teststarter.model.School;

@RestController
@SpringBootApplication
public class TestApplication {

	@Autowired
	private School school;

	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
	}

	@RequestMapping("/class")
	public String getClass1() {
		System.out.println(school.getClass1().getStudents());
		return school.getClass1().getClassname() + school.getClass1().getClassdesc();
	}

	public static void conn() {
		String URL = "jdbc:mysql://127.0.0.1:3306/test?characterEncoding=utf-8";
		String USER = "root";
		String PASSWORD = "123456";
		// 1.加载驱动程序
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 2.获得数据库链接
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			// 3.通过数据库的连接操作数据库，实现增删改查（使用Statement类）
			String name = "张三";
			// 预编译
			String sql = "select * from test where name=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, name);
			ResultSet rs = statement.executeQuery();
//			String sql="select * from test where name='"+name+"'";
//			Statement statement = conn.createStatement();			
//			ResultSet rs = statement.executeQuery(sql);
			// 4.处理数据库的返回结果(使用ResultSet类)
			while (rs.next()) {
				System.out.println(rs.getInt("id") + " " + rs.getString("name"));
			}

			// 关闭资源【多谢指正】
			rs.close();
			statement.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
