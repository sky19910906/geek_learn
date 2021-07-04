package io.kimmking.rpcfx.client;

 
import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import com.alibaba.fastjson.JSON;

import io.kimmking.rpcfx.api.Filter;
import io.kimmking.rpcfx.api.RpcfxRequest;
import io.kimmking.rpcfx.api.RpcfxResponse;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;

import java.io.IOException;
import java.lang.reflect.Method;
 

public class CglibMethodInterceptor implements MethodInterceptor {
	
	 public static final MediaType JSONTYPE = MediaType.get("application/json; charset=utf-8");

     private final Class<?> serviceClass;
     private final String url;
     private final Filter[] filters;
     
     public <T> CglibMethodInterceptor(Class<T> serviceClass, String url, Filter... filters) {
         this.serviceClass = serviceClass;
         this.url = url;
         this.filters = filters;
     }

	
    /**
     * 用于生成 Cglib 动态代理类工具方法
     *
     * @param target 代表需要 被代理的 委托类的 Class 对象
     * @return
     */
    public Object cglibProxyGeneratory() {
        /** 创建cglib 代理类 start */
        // 创建加强器，用来创建动态代理类
        Enhancer enhancer = new Enhancer();
        // 为代理类指定需要代理的类，也即是父类
        enhancer.setInterfaces(new Class[]{serviceClass});
        // 设置方法拦截器回调引用，对于代理类上所有方法的调用，都会调用CallBack，而Callback则需要实现intercept() 方法进行拦截
        enhancer.setCallback(this);        // 获取动态代理类对象并返回
        return enhancer.create();        /** 创建cglib 代理类 end */
    }
 
    @Override
    public Object intercept(Object obj, Method method, Object[] args, MethodProxy proxy) throws Throwable {

        RpcfxRequest request = new RpcfxRequest();
        request.setServiceClass(this.serviceClass.getName());
        request.setMethod(method.getName());
        request.setParams(args);

        if (null!=filters) {
            for (Filter filter : filters) {
                if (!filter.filter(request)) {
                    return null;
                }
            }
        }

        RpcfxResponse response = post(request, url);
        // 加filter地方之三
        // Student.setTeacher("cuijing");

        // 这里判断response.status，处理异常
        // 考虑封装一个全局的RpcfxException
        return JSON.parse(response.getResult().toString());
    }
    

    private RpcfxResponse post(RpcfxRequest req, String url) throws IOException {
        String reqJson = JSON.toJSONString(req);
        System.out.println("req json: "+reqJson);

        // 1.可以复用client
        // 2.尝试使用httpclient或者netty client
        OkHttpClient client = new OkHttpClient();
        final Request request = new Request.Builder()
                .url(url)
                .post(RequestBody.create(JSONTYPE, reqJson))
                .build();
        String respJson = client.newCall(request).execute().body().string();
        System.out.println("resp json: "+respJson);
        return JSON.parseObject(respJson, RpcfxResponse.class);
    }
}
