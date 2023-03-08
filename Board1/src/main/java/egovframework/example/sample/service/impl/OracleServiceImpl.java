package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;
import egovframework.example.sample.dao.OracleDAO;
import egovframework.example.sample.service.OracleService;

@Service
public class OracleServiceImpl implements OracleService{

	@Autowired
	private OracleDAO oracleDAO;

	@Override //댓글 목록 조회
	public List<ReplyVO> selectReplyList(TestVO testVO) throws Exception {
		return oracleDAO.selectReplyList(testVO);
	}

	@Override //댓글 작성
	public void insertReply(ReplyVO replyVO) throws Exception {
		oracleDAO.insertReply(replyVO);
	}

	
}
