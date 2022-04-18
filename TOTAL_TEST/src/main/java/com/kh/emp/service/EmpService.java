package com.kh.emp.service;

import java.util.List;

import com.kh.emp.vo.EmpVO;

public interface EmpService {
	List<EmpVO> selectEmpList();
	void insertEmp(EmpVO empVO);
	//인서트 코딩하기. 서비스, 임플, 컨트롤러, jsp에서 등록해보기, 목록에서 확인해보기, ****폰번호 오류 확률 있음
}
