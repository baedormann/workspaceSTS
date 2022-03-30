package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;

public interface StudentService {
	List<ClassVO> selectClassList();

	List<StudentVO> selectStuList(ClassVO classVO);
	
	StudentVO selectStuDetail(String stuNum);
	
	void updateScore(StudentVO studentVO);
}

