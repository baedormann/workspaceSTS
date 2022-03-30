package com.kh.shop.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.shop.service.StudentService;
import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Resource(name="studentService")
	private StudentService studentService;
	
	@GetMapping("/studentList")
	public String studentList(Model model, ClassVO classVO) {
		model.addAttribute("classList", studentService.selectClassList());
		model.addAttribute("stuList", studentService.selectStuList(classVO));
		
		return "student_manage";
	}
	
	@ResponseBody
	@PostMapping("/studentListAjax")
	public List<StudentVO> studentListAjax(ClassVO classVO) {
		List<StudentVO> list = studentService.selectStuList(classVO);
		
		return list;
	}

	@ResponseBody
	@PostMapping("/stuDetail")
	public StudentVO stuDetail(String stuNum) {
		return studentService.selectStuDetail(stuNum);
	}

	@ResponseBody
	@PostMapping("/updateScore")
	public void updateScore(StudentVO studentVO) {
		studentService.updateScore(studentVO);
	}
}
