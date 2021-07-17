package com.sky.myredis.controller;

import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.support.atomic.RedisAtomicLong;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sky.myredis.service.RedisLockService;

@RestController
public class RedisController {
	
	@Autowired
	private RedisTemplate<Object, Object> mRedisTemp;
	
	@Autowired
	private RedisLockService redisLockService;
	
	@GetMapping("/redis/lock")
	public String lock(@RequestParam("key") String key) {
		//初始化库存10
		RedisAtomicLong counter = new RedisAtomicLong("stock", mRedisTemp.getConnectionFactory());
		counter.set(10);
		//5分钟失效
		counter.expire(600, TimeUnit.SECONDS);
		//100个抢购者
	    for (int i = 0; i < 100; i++) {
	        new Thread(() -> {
	            redisLockService.lock(key);
	            //抢购+1
            	if (counter.get() > 0) {
            		System.out.println(Thread.currentThread().getId()+"抢购商品一件，剩余库存："+counter.decrementAndGet());
				}else {
					System.out.println("商品已售空，改天再来。");
				}
	            System.out.println(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss SSS"));
	            redisLockService.unlock(key);
	        }
	        ).start();
	    }
	    return "OK";
	}
}
