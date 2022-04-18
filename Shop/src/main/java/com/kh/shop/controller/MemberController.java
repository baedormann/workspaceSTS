package com.kh.shop.controller;

import java.security.SecureRandom;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.shop.service.MemberService;
import com.kh.shop.vo.MemberVO;

//@Controller 어노테이션의 역할
//1. 해당 클래스를 Controller로 인식
//2. 해당 클래스에 대한 객체를 생성

@Controller
@RequestMapping("/member")
public class MemberController {
	@Resource(name = "memberService")
	private MemberService memberService;
	
	@Autowired	// @Resource(name = "mailSender")를 사용해도 됨
	private JavaMailSender mailSender;

	@PostMapping("/join")
	public String join(MemberVO memberVO) {
		memberService.join(memberVO);
		return "redirect:/item/itemList";
	}

	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session) {
		MemberVO result = memberService.login(memberVO);

		if (result != null) {
			session.setAttribute("loginInfo", result);
			// 세션에 데이터가 저장되는 시간을 설정
			// session.setMaxInactiveInterval(5);
		}

		return "redirect:/item/itemList";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginInfo");
		return "redirect:/item/itemList";
	}

	@GetMapping("/findPw")
	public String findPw() {
		return "member/find_pw";
	}
	
	@ResponseBody
	@PostMapping("/findPw")
	public void postFindPw(MemberVO memberVO, Model model) {
		// 메일 정보 조회
		String memEmail = memberService.selectMemEmail(memberVO);

		// 임시 비밀번호 생성 소문자 + 대문자 + 숫자 포함 8자리
		System.out.println(getImsiPw());
		
		try {
			//메일 보내기
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper;

			messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom("baedormann@gmail.com");
			messageHelper.setTo("dohoon0301d@gmail.com");
			messageHelper.setSubject("메일 테스트");
			messageHelper.setText("테스트입니다.");
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	// 소문자 + 대문자 + 숫자 포함 8자리의 문자열 생성 및 리턴
	public String getImsiPw() {
		String lowerCase = "abcdefghijklmnopqrstuvwxyz";
		String upperCase = lowerCase.toUpperCase();
		String number = "0123456789";
		String baseStr = lowerCase + upperCase + number;

		StringBuilder imsiPw = new StringBuilder();

		for (int i = 0; i < 8; i++) {
			// rand.nextInt(10);// 0 <= rand.nextInt(10) < 10
			SecureRandom rand = new SecureRandom();
			int index = rand.nextInt(baseStr.length());
			char c = baseStr.charAt(index);
			imsiPw.append(String.valueOf(c));
		}

		return imsiPw.toString();
	}
}
