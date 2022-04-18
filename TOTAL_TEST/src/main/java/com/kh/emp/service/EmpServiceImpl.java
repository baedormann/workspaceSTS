package com.kh.emp.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.emp.vo.EmpVO;

@Service("empService")
public class EmpServiceImpl implements EmpService{
	@Autowired
	SqlSessionTemplate sqlsession;
	
	@Override
	public List<EmpVO> selectEmpList() {
		return sqlsession.selectList("empMapper.selectEmpList");
	}

	@Override
	public void insertEmp(EmpVO empVO) {
		sqlsession.insert("empMapper.insertEmp", empVO);
	}

}
