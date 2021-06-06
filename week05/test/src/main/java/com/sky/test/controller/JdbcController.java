package com.sky.test.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JdbcController {
	@Autowired
// jdbcTemplate 是springboot的核心文件  用来简化数据库操作,内部定义了很多避免错误的机制
// springboot默认提供了数据源com.zaxxer.hikari.HikariDataSource
// springboot自动注入数据源,使用它不用管理数据源,也不用管理关闭问题
	JdbcTemplate jdbcTemplate;

	@GetMapping("/query")
	public List<Map<String, Object>> queryAll() {
		String sql = "select * from test";
		System.out.println(jdbcTemplate);
//       执行sql语句
		List<Map<String, Object>> maps = jdbcTemplate.queryForList(sql);
		return maps;
	}

	// 增加用户
	@GetMapping("/addUser")
	public String addUser() {
		String sql = "insert into test(id,name) values (11111,'小明')";
		jdbcTemplate.update(sql);
		return "addUser-ok";
	}

	// 更新用户
	@GetMapping("/updateUser/{id}")
	public String updateUser(@PathVariable("id") int id) {
		String sql = "update test set name=? where id=" + id;
		Object[] objects = new Object[1];
		objects[0] = "小明2";
		jdbcTemplate.update(sql, objects);
		return "updateUser-ok";
	}

	// 删除用户
	@GetMapping("/delUser/{id}")
	public String delUser(@PathVariable("id") int id) {
		String sql = "delete from test where id=?";
		jdbcTemplate.update(sql, id);
		return "delUser-ok";
	}
}
