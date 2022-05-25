package com.kh.teamprj.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.teamprj.vo.BaedohunCollVO;
import com.kh.teamprj.vo.BaedohunDeptVO;
import com.kh.teamprj.vo.BaedohunStudentVO;
import com.kh.teamprj.vo.LecVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<BaedohunStudentVO> selectStudentList() {
		return sqlSession.selectList("adminMapper.selectStudentList");
	}

	@Override
	public List<BaedohunCollVO> selectCollList() {
		return sqlSession.selectList("adminMapper.selectCollList");
	}

	@Override
	public List<BaedohunDeptVO> selectDeptList() {
		return sqlSession.selectList("adminMapper.selectDeptList");
	}

	@Override
	public List<LecVO> selectLecList() {
		return sqlSession.selectList("adminMapper.selectLecList");
	}

}
