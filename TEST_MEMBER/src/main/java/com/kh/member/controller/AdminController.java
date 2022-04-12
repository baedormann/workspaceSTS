package com.kh.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.member.vo.MemberVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/adminPage")
	public String adminPage(HttpSession session, MemberVO memberVO) {
		
		return "admin/admin_page";
	}
	
}
