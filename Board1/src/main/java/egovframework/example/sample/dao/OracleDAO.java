package egovframework.example.sample.dao;

import java.util.List;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;

public interface OracleDAO{
	//댓글 목록 조회
	public List<ReplyVO> selectReplyList(TestVO testVO) throws Exception;
	
	//댓글 작성
	public void insertReply(ReplyVO replyVO) throws Exception;
}