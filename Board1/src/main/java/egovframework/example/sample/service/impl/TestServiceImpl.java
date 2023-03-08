package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;
import egovframework.example.sample.dao.TestDAO;
import egovframework.example.sample.service.TestService;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	private TestDAO testDAO;
	
	@Override //게시판 목록 조회
	public List<TestVO> selectBoardList(TestVO testVO) throws Exception {
		return testDAO.selectBoardList(testVO);
	}

	@Override //게시물 상세 조회
	public TestVO selectBoardDetail(TestVO testVO) throws Exception {
		return testDAO.selectBoardDetail(testVO);
	}

	@Override //게시물 등록
	public void insertBoard(TestVO testVO) throws Exception {
		testDAO.insertBoard(testVO);
	}

	@Override //게시물 삭제
	public void deleteBoard(TestVO testVO) throws Exception {
		testDAO.deleteBoard(testVO);
	}

	@Override //게시물 수정
	public void updateBoard(TestVO testVO) throws Exception {
		testDAO.updateBoard(testVO);
	}
	
	@Override //댓글 목록 조회
	public List<ReplyVO> selectReplyList(TestVO testVO) throws Exception {
		return testDAO.selectReplyList(testVO);
	}

	@Override //댓글 작성
	public void insertReply(ReplyVO replyVO) throws Exception {
		testDAO.insertReply(replyVO);
	}
}
