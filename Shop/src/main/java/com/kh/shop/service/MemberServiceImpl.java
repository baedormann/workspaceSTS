package com.kh.shop.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	//spring에서 myBatis를 사용가능하게 하는 객체
	//SqlSessionTemplate 자료형으로 미리 만들어 둔 객체를 연결시킨다.
	//@Autowired는 미리 만들어준 객체 중에서 
	//자료형에 대입될 수 있는 객체를 가져와 객체를 주입한다.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void join(MemberVO memberVO) {
		sqlSession.insert("memberMapper.join", memberVO);
	}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.login", memberVO);
	}

	@Override
	public String selectMemEmail(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.selectMemEmail", memberVO);
	}

}
