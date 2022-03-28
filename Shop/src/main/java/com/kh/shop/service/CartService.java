package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.CartVO;
import com.kh.shop.vo.CartViewVO;

public interface CartService {
	//장바구니에 추가
	void insertCart(CartVO cartVO);
	
public List<CartViewVO> selectCartList(String memId);
}
