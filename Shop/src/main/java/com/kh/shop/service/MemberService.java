package com.kh.shop.service;

import org.springframework.stereotype.Service;
import com.kh.shop.vo.MemberVO;

@Service("memberService")
public interface MemberService {
	
	void join(MemberVO memberVO);

	MemberVO login(MemberVO memberVO);

	String selectMemEmail(MemberVO memberVO);
}