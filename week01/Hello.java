package com.test;

public class Hello {

	public static void main(String[] args) {
		int a = 1;
		int b = 1;
		int c = a+b;
		if (c > 0) {
			System.out.println("c>0");
		}
		for (int i = 0; i < 2; i++) {
			c--;
			System.out.println("c的当前值为：" + c);
		}
	}
}
