package com.kh.validation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.validation.vo.MemberVO;

//해당 클래스가 컨트롤러임을 인지(개발자 입장에서) + 해당 클래스의 객체 생성
@Controller
@RequestMapping("/test")
public class TestController {
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	
	@GetMapping("/insertForm")
	public String insertForm() {
		return "insert_form";
	}

	@GetMapping("/main")
	public String main() {
		
		return "main";
	}
	
	@PostMapping("/insert")
	public String insert(MemberVO memberVO) {
		System.out.println("회원을 등록합니다.");
		return "";
	}
	
	@GetMapping("/securityTest")
	public String securityTest(MemberVO memberVO) {
		memberVO.setPw("oracle");
		
		String encodePw = pwEncoder.encode(memberVO.getPw());
		
		memberVO.setPw(encodePw);
		
		pwEncoder.matches("oracle", "암호화된 비밀번호(디비에 저장된 비밀번호)");
		
		return "";
	}
}
