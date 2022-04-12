package com.kh.board.service;

import java.util.List;

import com.kh.board.vo.BoardVO;

public interface BoardService {
	//게시글 목록 조회
	List<BoardVO> selectBoardList(BoardVO bardVO);		
	
	//게시글 작성
	void insertBoard(BoardVO boardVO);
	
	//게시글 상세 조회
	BoardVO selectBoardDetail(int boardNum);
	
	//총 게시글 개수 조회
	int selectBoardCnt(BoardVO boardVO);
	
}
