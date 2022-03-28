package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO2;

public interface StudentService {
	List<ClassVO> selectClassList();

	List<StudentVO2> selectStudentList();
}

