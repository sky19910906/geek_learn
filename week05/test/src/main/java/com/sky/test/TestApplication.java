package com.sky.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.Duration;
import java.time.Instant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.Import;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sky.teststarter.model.School;

@RestController
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class TestApplication {

	@Autowired
	private School school;

	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
//		insert3();
	}

	@RequestMapping("/class")
	public String getClass1() {
		System.out.println(school.getClass1().getStudents());
		return school.getClass1().getClassname() + school.getClass1().getClassdesc();
	}

	// 方法一 statement单条插入 10万数据耗时：14200ms(一次事务提交)
	public static void insert1() {
		String URL = "jdbc:mysql://127.0.0.1:3306/eshop?characterEncoding=utf-8";
		String USER = "root";
		String PASSWORD = "123456";
		// 1.加载驱动程序
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 2.获得数据库链接
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			conn.setAutoCommit(false);
			Instant start = Instant.now();
			Statement statement = conn.createStatement();
			for (int i = 0; i < 100000; i++) {
				String sql = "INSERT INTO eshop_order(USER_ID,ORDER_TIME,ORDER_STATUS,ORDER_PRICE,TIME_OUT,ORDER_SOURCE,CREATE_TIME,UPDATE_TIME,DELETE_FLAG,JPA_VERSION) values ("
						+ ""+i+",'2021-6-20 0:52:5.0','1',2.0,'2021-6-20 0:52:5.0','1','2021-6-20 0:52:5.0','2021-6-20 0:52:5.0','N',0)";
				statement.executeUpdate(sql);
			}
			Instant end = Instant.now();
			conn.commit();
			System.out.println("执行时间：" + Duration.between(start, end).toMillis());
			// 4.处理数据库的返回结果(使用ResultSet类)
			statement.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 方法二 preparestatement单条插入10万数据耗时：13942ms(一次事务提交)
	public static void insert2() {
		String URL = "jdbc:mysql://127.0.0.1:3306/eshop?characterEncoding=utf-8";
		String USER = "root";
		String PASSWORD = "123456";
		// 1.加载驱动程序
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 2.获得数据库链接
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			conn.setAutoCommit(false);
			Instant start = Instant.now();
			String sql = "INSERT INTO eshop_order(ORDER_ID,USER_ID,ORDER_TIME,ORDER_STATUS,ORDER_PRICE,TIME_OUT,ORDER_SOURCE,CREATE_TIME,UPDATE_TIME,DELETE_FLAG,JPA_VERSION) values ("
					+ "?,1,'2021-6-20 0:52:5.0','1',2.0,'2021-6-20 0:52:5.0','1','2021-6-20 0:52:5.0','2021-6-20 0:52:5.0','N',0)";

//			String sql = "INSERT INTO eshop_goods(GOOD_ID) value (?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			for (int i = 0; i < 100000; i++) {
				statement.setLong(1, i);
				statement.executeUpdate();
			}
			Instant end = Instant.now();
			conn.commit();
			System.out.println("执行时间：" + Duration.between(start, end).toMillis());
			// 4.处理数据库的返回结果(使用ResultSet类)
			statement.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 方法四 preparestatement addbatch
	public static void insert3() {
		String URL = "jdbc:mysql://127.0.0.1:3306/test?characterEncoding=utf-8&rewriteBatchedStatements=true";
		String USER = "root";
		String PASSWORD = "123456";
		// 1.加载驱动程序
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 2.获得数据库链接
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			conn.setAutoCommit(false);
			Instant start = Instant.now();
//			String sql = "INSERT INTO eshop_order(ORDER_ID,USER_ID,ORDER_TIME,ORDER_STATUS,ORDER_PRICE,TIME_OUT,ORDER_SOURCE,CREATE_TIME,UPDATE_TIME,DELETE_FLAG,JPA_VERSION) values ("
//					+ "?,1,'2021-6-20 0:52:5.0','1',2.0,'2021-6-20 0:52:5.0','1','2021-6-20 0:52:5.0','2021-6-20 0:52:5.0','N',0)";

			String sql = "INSERT INTO eshop_goods(GOOD_ID) value (?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			for (int i = 0; i < 100000; i++) {
				statement.setLong(1, i);
				statement.addBatch();
			}
			statement.executeBatch();
			Instant end = Instant.now();
			conn.commit();
			System.out.println("执行时间：" + Duration.between(start, end).toMillis());
			// 4.处理数据库的返回结果(使用ResultSet类)
			statement.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
