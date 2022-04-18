package com.kh.teamprj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	//관리자페이지 홈
	@GetMapping("/home")
	public String home(){
		
		return "admin/home";
	}
	@GetMapping("/studentManage")
	public String studentManage(){
		
		return "admin/student_manage";
	}
	@GetMapping("/courseManage")
	public String courseManage(){
		
		return "admin/course_manage";
	}
	@GetMapping("/boardManage")
	public String boardManage(){
		
		return "admin/board_manage";
	}
}
