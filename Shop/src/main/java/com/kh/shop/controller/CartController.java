package com.kh.shop.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.shop.service.CartService;
import com.kh.shop.vo.CartVO;
import com.kh.shop.vo.CartViewVO;
import com.kh.shop.vo.MemberVO;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource(name="cartService")
	private CartService cartService;
	
	//장바구니에 추가
	@PostMapping("/insertCart")
	public String insertCart(CartVO cartVO, HttpSession session) {
		String loginId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		cartVO.setMemId(loginId);
		cartService.insertCart(cartVO);
		
		return "cart/insert_result";
	}

	//장바구니리스트 조회
	@GetMapping("/cartList")
	public String selectCartList(HttpSession session, Model model) {
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		model.addAttribute("cartList", cartService.selectCartList(memId));
		
		List<CartViewVO> cartList = cartService.selectCartList(memId);
		int totalPrice = 0;
		for(CartViewVO e : cartList) {
			totalPrice += e.getTotalPrice();
		}
		model.addAttribute("totalPrice", totalPrice);
		
		return "cart/cart_list";
	}
	@GetMapping("/deleteCart")
	public String deleteCart(int cartNum) {
		cartService.deleteCart(cartNum);
		
		return "redirect:/cart/cartList";
	}
	@ResponseBody
	@PostMapping("/updateItemCnt")
	public void changeQuantity(HttpSession session, CartVO cartVO) {
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		cartVO.setMemId(memId);
		cartService.updateItemCnt(cartVO);
		
		//return "redirect:/cart/cartList";
	}
}
