package com.kh.board.service;

import java.util.List;

import com.kh.board.vo.BoardVO;

public interface BoardService {
	//게시글 목록 조회
	List<BoardVO> selectBoardList();
	
	//게시글 등록
	void insertBoard(BoardVO boardVO);
	
	//상세조회
	BoardVO selectBoardDetail(int boardNum);
}
