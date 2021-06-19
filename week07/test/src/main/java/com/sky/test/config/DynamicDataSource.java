package com.sky.test.config;

import javax.sql.DataSource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class DynamicDataSource extends AbstractRoutingDataSource {

    /**
     * @return 切换数据源的时候该方法会被调用
     */
    @Override
    protected Object determineCurrentLookupKey() {
        return DataSourceContextHolder.getDataSource();
    }

    
    public DataSource getAcuallyDataSource() {
		Object lookupKey = determineCurrentLookupKey();
		if(null == lookupKey) {
			return this;
		}
		DataSource determineTargetDataSource = this.determineTargetDataSource();
		return determineTargetDataSource==null ? this : determineTargetDataSource;
	}
}