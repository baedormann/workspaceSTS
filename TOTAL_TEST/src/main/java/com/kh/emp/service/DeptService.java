package com.kh.emp.service;

import java.util.List;

import com.kh.emp.vo.DeptVO;

public interface DeptService {
	List<DeptVO> selectDeptList();
	void insertDept(DeptVO deptVO);
}
