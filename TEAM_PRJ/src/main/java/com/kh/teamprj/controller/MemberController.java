package com.kh.teamprj.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.teamprj.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Resource(name="memberService")
	private MemberService memberService;
	
	@GetMapping("/home")
	public String home(){
		return "member/home";
	}
	
	@GetMapping("/login")
	public String login(){
		return "member/login";
	}
	
	@GetMapping("/join")
	public String join(String joinType, Model model){
		model.addAttribute("joinType", joinType);
		return "member/join";
	}
	
}
