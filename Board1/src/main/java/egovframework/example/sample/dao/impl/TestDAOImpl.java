package egovframework.example.sample.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;
import egovframework.example.sample.dao.TestDAO;
import egovframework.example.sample.service.TestMapper;

@Repository
public class TestDAOImpl implements TestDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	//게시판
	@Override //게시판 목록 조회
	public List<TestVO> selectBoardList(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		return mapper.selectBoardList(testVO);
	}

	@Override //게시물 상세 조회
	public TestVO selectBoardDetail(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		return mapper.selectBoardDetail(testVO);
	}

	@Override //게시물 등록
	public void insertBoard(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		mapper.insertBoard(testVO);
	}

	@Override //게시물 삭제
	public void deleteBoard(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		mapper.deleteBoard(testVO);
	}

	@Override //게시물 수정
	public void updateBoard(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		mapper.updateBoard(testVO);
	}
	//댓글
	@Override //댓글 목록 조회
	public List<ReplyVO> selectReplyList(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		return mapper.selectReplyList(testVO);
	}

	@Override // 댓글 작성
	public void insertReply(ReplyVO replyVO) throws Exception {
		TestMapper mapper = sqlSessionTemplate.getMapper(TestMapper.class);
		mapper.insertReply(replyVO);
	}

}
