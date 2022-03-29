package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;

public interface StudentService {
	List<ClassVO> selectClassList();

	List<StudentVO> selectStudentList(ClassVO classVO);
	
	StudentVO selectStudentDetail(StudentVO studentVO);
}

