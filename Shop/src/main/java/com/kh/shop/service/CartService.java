package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.CartVO;
import com.kh.shop.vo.CartViewVO;

public interface CartService {
	//장바구니에 추가
	void insertCart(CartVO cartVO);
	
	List<CartViewVO> selectCartList(String memId);
	
	//장바구니 상품 삭제
	void deleteCart(int cartNum);
	
	//장바구니 상품 수량 변경
	void updateItemCnt(CartVO cartVO);

	void deleteCarts(CartVO cartVO);
}
