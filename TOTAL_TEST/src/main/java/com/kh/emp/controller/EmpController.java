package com.kh.emp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.emp.service.DeptService;
import com.kh.emp.service.EmpService;
import com.kh.emp.vo.EmpVO;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Resource(name="empService")
	EmpService empService;
	
	@Resource(name="deptService")
	DeptService deptService;
	
	@GetMapping("/home")
	public String home() {
		return "emp/home";
	}
	
	@GetMapping("/regEmp")
	public String regEmp(Model model) {
		model.addAttribute("deptList", deptService.selectDeptList());
		return "emp/reg_emp";
	}

	@PostMapping("/regEmp")
	public String postRegEmp(EmpVO empVO) {
		empVO.setEmpTell(empVO.getEmpTells());
		empService.insertEmp(empVO);
		return "redirect:/emp/empList";
	}
	
	@GetMapping("/empList")
	public String empList(Model model) {
		model.addAttribute("empList", empService.selectEmpList());
		return "emp/emp_list";
	}
	
}














