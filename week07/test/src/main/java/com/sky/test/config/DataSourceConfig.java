//package com.sky.test.config;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.boot.context.properties.ConfigurationProperties;
//import org.springframework.boot.jdbc.DataSourceBuilder;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Primary;
//
//import com.zaxxer.hikari.HikariDataSource;
//
//@Configuration
//public class DataSourceConfig {
//
//	@Bean(name = "first")
//	@ConfigurationProperties(prefix = "spring.datasource.hikari.primary")
//	public DataSource dataSourceFirst() {
//		return DataSourceBuilder.create().type(HikariDataSource.class).build();
//	}
//
//	@Bean(name = "sencond")
//	@ConfigurationProperties(prefix = "spring.datasource.hikari.sencond")
//	public DataSource dataSourceSecond() {
//		return DataSourceBuilder.create().type(HikariDataSource.class).build();
//	}
//
//	@Primary
//	@Bean(name = "dynamicDataSource")
//	public DataSource dynamicDataSource(@Qualifier("first") DataSource first, @Qualifier("sencond") DataSource sencond) {
//		DynamicDataSource dynamicDataSource = new DynamicDataSource();
//		// 配置默认数据源
//		dynamicDataSource.setDefaultTargetDataSource(first);
//		// 保存所有可切换的数据源
//		Map<Object, Object> dataSourceMap = new HashMap<>();
//		dataSourceMap.put("first", first);
//		dataSourceMap.put("sencond", sencond);
//		dynamicDataSource.setTargetDataSources(dataSourceMap);
//		return dynamicDataSource;
//	}
//
//}
