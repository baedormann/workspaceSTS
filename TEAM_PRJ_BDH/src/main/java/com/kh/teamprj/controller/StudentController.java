package com.kh.teamprj.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.teamprj.service.StudentService;
import com.kh.teamprj.vo.ClassVO;

@Controller
@RequestMapping("/stu")
public class StudentController {
	@Resource(name="studentService")
	private StudentService studentService;
	
	//홈으로
	@GetMapping("/home")
	public String home(){
		
		return "stu/home";
	}

	// 내정보 조회 페이지로 이동
	@GetMapping("/myStu")
	public String myStu() {

		return "stu/my_stu";
	}

	// 내시간표 조회 페이지로 이동
	@GetMapping("/myClass")
	public String myClass() {

		return "stu/my_class";
	}
		
	// 내 성적 확인 페이지로 이동
	@GetMapping("/myScore")
	public String myScore() {

		return "stu/my_score";
	}

	// 휴복학 전공신청 페이지로 이동
	@GetMapping("/mySchool")
	public String mySchool() {

		return "stu/my_school";
	}

	// 수강신청 페이지로 이동
	@GetMapping("/regClass")
	public String regClass() {

		return "stu/reg_class";
	}
}









