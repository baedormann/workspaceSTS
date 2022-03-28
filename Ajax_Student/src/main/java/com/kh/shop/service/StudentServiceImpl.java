package com.kh.shop.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO2;

@Service("studentService")
public class StudentServiceImpl implements StudentService{
	@Autowired 
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ClassVO> selectClassList() {
		return sqlSession.selectList("studentMapper.selectClassList");
	}

	@Override
	public List<StudentVO2> selectStudentList() {
		return sqlSession.selectList("studentMapper.selectStudentList");
	}
	
}
