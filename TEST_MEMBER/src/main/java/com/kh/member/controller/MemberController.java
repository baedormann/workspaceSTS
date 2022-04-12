package com.kh.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.member.service.MemberService;
import com.kh.member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Resource(name = "memberService")
	private MemberService memberService;
	
	//전체 멤버 리스트
	@GetMapping("/memberList")
	public String boardList(Model model) {
		model.addAttribute("memberList", memberService.selectMemberList());
		return "member/member_list";
	}
	@GetMapping("/login")
	public String login(Model model) {
		
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session, Model model) {
		MemberVO result = memberService.login(memberVO);
		
		if (result != null) {
			session.setAttribute("loginInfo", result);
		}
		
		model.addAttribute("loginResult", result);
		return "member/login_result";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginInfo");
		return "redirect:/member/login";
	}
	
}














