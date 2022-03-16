package com.kh.shop.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.tiles.request.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


//@Controller 어노테이션의 역할
//1. 해당 클래스를 Controller로 인식
//2. 해당 클래스에 대한 객체를 생성
//@ReqeustMapping("/board") 
// : 요청 경로가 /board로 시작하면 BoardController 실행

@Controller
@RequestMapping("/member")
public class MemberController {
	
}
