package com.kh.emp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.emp.service.DeptService;
import com.kh.emp.vo.DeptVO;

@Controller
@RequestMapping("/dept")
public class DeptController {
	@Resource(name="deptService")
	private DeptService deptService;
	
	@GetMapping("/deptManage")
	public String deptManage(Model model) {
		model.addAttribute("deptList", deptService.selectDeptList());
		return "dept/dept_manage";
	}
	
	@PostMapping("/regDept")
	public String regDept(DeptVO deptVO) {
		deptService.insertDept(deptVO);
		return "redirect:/dept/deptManage";
	}
	
}
