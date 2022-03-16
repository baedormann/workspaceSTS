package com.kh.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.board.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	//spring에서 myBatis를 사용가능하게 하는 객체
	//SqlSessionTemplate 자료형으로 미리 만들어 둔 객체를 연결시킨다.
	//@Autowired는 미리 만들어준 객체 중에서 
	//자료형에 대입될 수 있는 객체를 가져와 객체를 주입한다.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//쿼리 실행하는 객체
	//SqlSessionFactory sqlSessionFactory = SqlSessionManager;
	//SqlSession sqlSession - sqlSessionFactory.openSession;
	
	@Override
	public List<BoardVO> selectBoardList() {
		return sqlSession.selectList("boardMapper.selectBoardList");
	}

	@Override
	public void insertBoard(BoardVO boardVO) {
		sqlSession.insert("boardMapper.insertBoard", boardVO);
	}

	@Override
	public BoardVO selectBoardDetail(int boardNum) {
		return sqlSession.selectOne("boardMapper.selectBoardDetail", boardNum);
	}

}