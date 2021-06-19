package com.sky.test.config;
public class DataSourceContextHolder {


    //保存线程连接的数据源
    private static final ThreadLocal<String> CONTEXT_HOLDER = new ThreadLocal<>();

    public static String getDataSource() {
        return CONTEXT_HOLDER.get();
    }

    public static void setDataSource(String key) {
        CONTEXT_HOLDER.set(key);
    }

    public static void cleanDataSource() {
        CONTEXT_HOLDER.remove();
    }
}