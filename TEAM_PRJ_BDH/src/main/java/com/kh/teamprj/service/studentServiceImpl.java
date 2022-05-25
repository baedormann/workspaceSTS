package com.kh.teamprj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.teamprj.vo.ClassVO;
import com.kh.teamprj.vo.Stu1VO;
import com.kh.teamprj.vo.StudentVO;

@Service("studentService")
public class studentServiceImpl implements StudentService{

	@Override
	public List<StudentVO> selectStudentList() {
		return null;
	}

	@Override
	public void insertClass(ClassVO classVo) {
		
	}

	@Override
	public List<ClassVO> selectClass() {
		return null;
	}

}
