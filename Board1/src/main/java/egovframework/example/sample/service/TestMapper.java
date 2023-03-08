package egovframework.example.sample.service;

import java.util.List;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;

//Mapper namespace 와 ID를 연결할 Interface 를 두어서 interface를 호출하는 방법.
//Mybatis 매핑XML에 기재된 SQL을 호출하기 위한 인터페이스이다.
//SQL id는 인터페이스에 정의된 메서드명과 동일하게 작성한다
public interface TestMapper {
	///////////////////////   게시판       ////////////////////////
	//게시판 목록 조회
	List<TestVO> selectBoardList(TestVO testVO) throws Exception;
	
	//게시물 상세 조회
	TestVO selectBoardDetail(TestVO testVO) throws Exception;
	
	//게시물 등록
	void insertBoard(TestVO testVO) throws Exception;
	
	//게시물 삭제
	void deleteBoard(TestVO testVO) throws Exception;
	
	//게시물 수정
	void updateBoard(TestVO testVO) throws Exception;
	
	////////////////////////    댓글        ////////////////////////
	//댓글 목록 조회
	List<ReplyVO> selectReplyList(TestVO testVO) throws Exception;
	
	//댓글 작성
	void insertReply(ReplyVO replyVO) throws Exception;
	
}
