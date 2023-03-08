package egovframework.example.sample.dao;

import java.util.List;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;

public interface TestDAO{
	//게시판
	//게시판 목록 조회
	public List<TestVO> selectBoardList(TestVO testVO) throws Exception;
	
	//게시물 상세 조회
	public TestVO selectBoardDetail(TestVO testVO) throws Exception;
	
	//게시물 등록
	public void insertBoard(TestVO testVO) throws Exception;
	
	//게시물 삭제
	public void deleteBoard(TestVO testVO) throws Exception;
	
	//게시물 수정
	public void updateBoard(TestVO testVO) throws Exception;
	
	//댓글
	//댓글 목록 조회
	public List<ReplyVO> selectReplyList(TestVO testVO) throws Exception;
	
	//댓글 작성
	public void insertReply(ReplyVO replyVO) throws Exception;
}