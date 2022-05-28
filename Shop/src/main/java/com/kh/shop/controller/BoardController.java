package com.kh.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	//상단메뉴 게시판 클릭 시 이동
	@GetMapping("/boardList")
	public String boardList() {
		return "board/board_list";
	}
}
