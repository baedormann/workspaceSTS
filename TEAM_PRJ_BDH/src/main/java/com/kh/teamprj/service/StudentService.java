package com.kh.teamprj.service;

import java.util.List;

import com.kh.teamprj.vo.ClassVO;
import com.kh.teamprj.vo.Stu1VO;
import com.kh.teamprj.vo.StudentVO;

public interface StudentService {
	
	//학생조회
	List<StudentVO> selectStudentList();

	//수업 등록
	void insertClass(ClassVO classVo);
		
	//시간표 조회
	List<ClassVO> selectClass();
	}

