package com.kh.emp.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.emp.vo.DeptVO;

@Service("deptService")
public class DeptServiceImpl implements DeptService{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<DeptVO> selectDeptList() {
		return sqlSession.selectList("deptMapper.selectDeptList");
	}

	@Override
	public void insertDept(DeptVO deptVO) {
		sqlSession.insert("deptMapper.insertDept", deptVO);
	}

}
