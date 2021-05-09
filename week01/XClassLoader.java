package com.test;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;

public class XClassLoader extends ClassLoader {
	
	public static void main(String[] args) throws Exception {
		XClassLoader classloader = new XClassLoader();
		Class<?> helloClass = classloader.loadClass("Hello");
		Method method = helloClass.getMethod("hello");
		method.invoke(helloClass.newInstance());
	}
	

	@Override
	protected Class<?> findClass(String name) throws ClassNotFoundException {
		InputStream input = this.getClass().getClassLoader().getResourceAsStream("com/test/Hello.xlass");
		try {
			int len = input.available();
			byte[] read = new byte[len];
			input.read(read);
			for (int i = 0; i < read.length; i++) {
				read[i] = (byte) (255 - read[i]);
			}
			return defineClass(name, read, 0, read.length);
		} catch (IOException e) {
			throw new ClassNotFoundException(name, e);
		}finally {
			if (null != input) {
	            try {
	            	input.close();
	            } catch (IOException e) {
	            	throw new ClassNotFoundException(name, e);
	            }
	        }
		}
	}
}
