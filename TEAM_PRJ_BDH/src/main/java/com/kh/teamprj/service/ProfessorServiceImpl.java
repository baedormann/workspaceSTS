package com.kh.teamprj.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.teamprj.vo.CollVO;
import com.kh.teamprj.vo.DeptVO;
import com.kh.teamprj.vo.LecVO;
import com.kh.teamprj.vo.SemesterVO;
import com.kh.teamprj.vo.Stu1VO;
import com.kh.teamprj.vo.StuScoreVO;

@Service("professorService")
public class ProfessorServiceImpl implements ProfessorService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertLec(LecVO lecVO) {
		sqlSession.insert("professorMapper.insertLec", lecVO);
	}

	@Override
	public void insertGrade(StuScoreVO scoreVO) {
		sqlSession.insert("professorMapper.insertGrade", scoreVO);
	}

	@Override
	public List<LecVO> selectLecList(String lecPr) {
		return sqlSession.selectList("professorMapper.selectLecList", lecPr);
	}

	@Override
	public List<CollVO> selectCollege() {
		return sqlSession.selectList("professorMapper.selectCollege");
	}

	@Override
	public List<Stu1VO> selectLecStu(Stu1VO stu1VO) {
		return sqlSession.selectList("professorMapper.selectLecStu", stu1VO);
	}

	@Override
	public List<DeptVO> selectDeptList(DeptVO deptVO) {
		return sqlSession.selectList("professorMapper.selectDeptList", deptVO);
	}

	@Override
	public List<SemesterVO> selectSemList() {
		return sqlSession.selectList("professorMapper.selectSemList");
	}

	@Override
	public List<Stu1VO> selectStuList() {
		return sqlSession.selectList("professorMapper.selectStuList");
	} 

}
