package com.kh.shop.vo;

import java.util.HashMap;
import java.util.Map;

public class MapTest {
	public static void main(String[] args) {
		Map<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "홍길동");
		map.put(2, "이순신");
		map.put(3, "이순신");
		
		map.get(1);
		
		Map<Integer, Student> studentMap = new HashMap<Integer, Student>();
		Student s1 = new Student();
		s1.stuNum = 1;
		s1.name = "홍길동";
		s1.age = 20;
		
		studentMap.put(s1.stuNum, s1);
		Student s = studentMap.get(1);
	}
}

class Student{
	int stuNum;
	String name;
	int age;
	
}
