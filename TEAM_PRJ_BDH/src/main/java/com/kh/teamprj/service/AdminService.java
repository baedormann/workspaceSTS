package com.kh.teamprj.service;

import java.util.List;

import com.kh.teamprj.vo.BaedohunCollVO;
import com.kh.teamprj.vo.BaedohunDeptVO;
import com.kh.teamprj.vo.BaedohunStudentVO;
import com.kh.teamprj.vo.LecVO;

public interface AdminService {
	//학생조회
	List<BaedohunStudentVO> selectStudentList();
	//단과대조회
	List<BaedohunCollVO> selectCollList();
	//학과조회
	List<BaedohunDeptVO> selectDeptList();
	//강의조회
	List<LecVO> selectLecList();
}
