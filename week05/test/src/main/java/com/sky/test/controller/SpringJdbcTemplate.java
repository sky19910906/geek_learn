//package com.sky.test.controller;
//
//import javax.sql.DataSource;
//
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.stereotype.Component;
//
//import com.sky.test.config.DynamicDataSource;
//
//@Component
//public class SpringJdbcTemplate  extends JdbcTemplate{
// 
//	@Override
//	public DataSource getDataSource() {
//		// TODO Auto-generated method stub
//		DynamicDataSource router =  (DynamicDataSource) super.getDataSource();
//		DataSource acuallyDataSource = router.getAcuallyDataSource();
//		return acuallyDataSource;
//	}
//	
//	public SpringJdbcTemplate(DataSource dataSource) {
//		super(dataSource);
//	}
//}
