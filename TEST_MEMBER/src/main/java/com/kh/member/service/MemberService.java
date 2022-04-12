package com.kh.member.service;

import java.util.List;

import com.kh.member.vo.MemberVO;

public interface MemberService {
	List<MemberVO> selectMemberList();
	MemberVO login(MemberVO memberVO);
}
