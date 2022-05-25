package com.kh.teamprj.service;

import java.util.List;

import com.kh.teamprj.vo.CollVO;
import com.kh.teamprj.vo.DeptVO;
import com.kh.teamprj.vo.LecVO;
import com.kh.teamprj.vo.SemesterVO;
import com.kh.teamprj.vo.Stu1VO;
import com.kh.teamprj.vo.StuScoreVO;

public interface ProfessorService {
	//강의 등록
	void insertLec(LecVO lecVo);
	
	//성적 등록
	void insertGrade(StuScoreVO scoreVO);
	
	//강의 리스트
	List<LecVO> selectLecList(String lecPr);
	
	//단과대 리스트
	List<CollVO> selectCollege();
	
	//내 강의를 듣고있는 학생 조회
	List<Stu1VO> selectLecStu(Stu1VO stu1VO);
	
	//전체 학생 조회
	List<Stu1VO> selectStuList();
	
	//단과대 번호로 학과 조회
	List<DeptVO> selectDeptList(DeptVO deptVO);
	
	//학기 정보 리스트
	List<SemesterVO> selectSemList();
	
}
