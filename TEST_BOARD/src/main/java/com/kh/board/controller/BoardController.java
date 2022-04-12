package com.kh.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.board.service.BoardService;
import com.kh.board.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Resource(name = "boardService")
	private BoardService boardService;
	
	//전체 게시판 리스트
	@RequestMapping("/boardList")
	public String boardList(Model model, BoardVO boardVO) {
		//기본 현재 페이지 1로 세팅
		int nowPage = 1;
		//jsp에서 받은 값을 nowPage에 입력
		if(boardVO.getNowPage() != 0) {
			nowPage = boardVO.getNowPage();
		}
		//전체 게시글 개수
		int totalCnt = boardService.selectBoardCnt(boardVO);
		//페이지 정보 세팅
		boardVO.setTotalCnt(totalCnt);
		boardVO.setNowPage(nowPage);
		boardVO.setPageInfo();
		
		
		//전체 게시글 넘기기(List<BoardVO>)
		model.addAttribute("boardList", boardService.selectBoardList(boardVO));
		//전체 게시글 개수 넘기기(int)
		model.addAttribute("boardCnt", totalCnt);
		return "board/board_list";
	}
	//글쓰기 페이지로 이동
	@GetMapping("/boardWrite")
	public String boardWrite() {
		return "board/board_write";
	}
	//글쓰기 버튼 클릭 시
	@PostMapping("/boardWrite")
	public String boardWrite(BoardVO boardVO) {
		boardService.insertBoard(boardVO);
		return "redirect:/board/boardList";
	}
	//게시글 상세 조회
	@GetMapping("/boardDetail")
	public String boardDetail(Model model, int boardNum) {
		model.addAttribute("boardInfo", boardService.selectBoardDetail(boardNum));
		return "board/board_detail";
	}
}














