package java0.conc0303;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/**
 * 本周作业：（必做）思考有多少种方式，在main函数启动一个新线程或线程池，
 * 异步运行一个方法，拿到这个方法的返回值后，退出主线程？
 * 写出你的方法，越多越好，提交到github。
 *
 * 一个简单的代码参考：
 */
public class Homework03 {
    
    public static void main(String[] args) throws Exception {
        long start=System.currentTimeMillis();
        // 在这里创建一个线程或线程池，
        // 异步执行 下面方法
        //方法1
        int result = 0; //这是得到的返回值
        Homework03 home = new Homework03();
        Runner runner = home.new Runner();
        Thread t1 = new Thread(runner);
		t1.start();
		//方法1-循环等待
		while(runner.result == 0) {
			Thread.sleep(100);
		}
		result = runner.getResult();
        // 确保  拿到result 并输出
        System.out.println("异步计算结果为："+result);
        //方法2-join
        result = 0;
        runner.setResult(0);
        Thread t2 = new Thread(runner);
		t2.start();
        t2.join();
        result = runner.getResult();
        System.out.println("异步计算结果为："+result);
        //方法3-futuretask
        FutureTask<Integer> task = new FutureTask<Integer>(home.new Caller());
        new Thread(task).start();
        System.out.println("异步计算结果为："+task.get());
        //方法4-线程池提交
        Future<Integer> task1 = Executors.newFixedThreadPool(4).submit(home.new Caller());
        System.out.println("异步计算结果为："+task1.get());
        System.out.println("使用时间："+ (System.currentTimeMillis()-start) + " ms");
        // 然后退出main线程
    }
    
    class Runner implements Runnable{
    	private int result = 0;
		@Override
		public void run() {
			result = sum();
		}
		public int getResult() {
			return result;
		}

		public void setResult(int result) {
			this.result = result;
		}
    }
    
    class Caller implements Callable<Integer>{
		@Override
		public Integer call() throws Exception {
			return sum();
		}
    	
    }
    
    private static int sum() {
        return fibo(36);
    }
    
    private static int fibo(int a) {
        if ( a < 2) 
            return 1;
        return fibo(a-1) + fibo(a-2);
    }
    
}
