package egovframework.example.sample.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;
import egovframework.example.sample.dao.OracleDAO;
import egovframework.example.sample.service.OracleMapper;

@Repository
public class OracleDAOImpl implements OracleDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate2;

	@Override //댓글 목록 조회
	public List<ReplyVO> selectReplyList(TestVO testVO) throws Exception {
		OracleMapper mapper = sqlSessionTemplate2.getMapper(OracleMapper.class);
		return mapper.selectReplyList(testVO);
	}

	@Override // 댓글 작성
	public void insertReply(ReplyVO replyVO) throws Exception {
		OracleMapper mapper = sqlSessionTemplate2.getMapper(OracleMapper.class);
		mapper.insertReply(replyVO);
	}
	
}
