package com.kh.shop.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.shop.service.AdminService;
import com.kh.shop.vo.ItemVO;

@Service("menuInterceptor")
public class MenuInterceptor extends HandlerInterceptorAdapter{
	@Resource(name = "adminService")
	private AdminService adminService;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
	ModelAndView modelAndView) throws Exception {
		//관리자메뉴 목록 조회
		modelAndView.addObject("menuList", adminService.selectMenuList());
		
		//선택된 관리자 메뉴
		String menuCode = request.getParameter("menuCode");


		//선택된 서브메뉴
		String subMenuCode =request.getParameter("subMenuCode");
	
		//회원관리 페이지로 이동할 때는...
		if(modelAndView.getViewName().equals("admin/member_list")) {
			subMenuCode = "SUB_MENU_004";
		}
		//카테고리 관리 페이지로 이동할 때는...
		if(modelAndView.getViewName().equals("admin/category_manage")) {
			if(menuCode == null) {
				menuCode = "MENU_001";
			}
			if(subMenuCode == null) {
				subMenuCode = "SUB_MENU_001";
			}
		}
		
		//서브 메뉴 조회
		modelAndView.addObject("subMenuList", adminService.selectSubMenuList(menuCode));

		modelAndView.addObject("selectedMenu", menuCode);
		modelAndView.addObject("selectedSubMenu", subMenuCode);

		//ItemVO vo = (ItemVO)(modelAndView.getModel().get("itemVO"));
		//System.out.println("@@@@@@@" + vo.getItemName());
		

		
	}

	
}
