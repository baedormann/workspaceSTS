package com.kh.teamprj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.teamprj.service.ProfessorService;
import com.kh.teamprj.vo.DeptVO;
import com.kh.teamprj.vo.LecVO;
import com.kh.teamprj.vo.Stu1VO;
import com.kh.teamprj.vo.StuScoreVO;


@Controller
@RequestMapping("/pro")
public class ProfessorController {
	@Resource(name="professorService")
	private ProfessorService professorService;
	
	//home으로(임시)
	@GetMapping("/home")
	public String home() {
		return "professor/home";
	}
	
	//강의 등록 페이지로 이동
	@GetMapping("/regLecForm")
	public String regLecForm(Model model) {
		//단과대 리스트
		model.addAttribute("collList", professorService.selectCollege());
		
		
		return "professor/reg_lec";
	}
	
	//단과대 선택에 따라 학과 선택창이 나오도록
	@ResponseBody
	@PostMapping("/selectDept")
	public List<DeptVO> selectDept(DeptVO deptVO) {
		List<DeptVO> list = professorService.selectDeptList(deptVO);
		
		return list; 
	}
	
	//강의 등록
	@PostMapping("/regLec")
	public String regLec(LecVO lecVO, HttpSession session){
		//강의 교수 이름가져와 세팅
			//member1VO member = session.getAttribute("loginInfo");
			//lecVO.setLecPr(member.getName());
		lecVO.setLecPr("자바");
		
		//lecVO 정보로 lec를 등록한다
		professorService.insertLec(lecVO);
		
		return "professor/reg_lec";
	}
	
	//성적등록 페이지로 이동
	@GetMapping("/regGradeForm")
	public String regScoreForm(Model model) {
		//교수 정보 (나중에 수정 필요)
		String lecPr = "김자바";
		
		//강의 리스트
		model.addAttribute("lecList", professorService.selectLecList(lecPr));
		
		//학기 정보
		model.addAttribute("semList", professorService.selectSemList());

		return "professor/reg_grade";
	}
	
	//강의 선택에 따라 학생목록 출력
	@ResponseBody
	@PostMapping("selectStu")
	public List<Stu1VO> selectStu(Stu1VO stu1VO) {
		
		return professorService.selectLecStu(stu1VO);
	}
	
	
	//성적 등록
	@PostMapping("/regGrade")
	public String regScore(StuScoreVO scoreVO) {
		
		
		//scoreVO 정보로 성적 등록
		professorService.insertGrade(scoreVO);
		
		return "";
	}
	
	//학생 조회 페이지로 이동
	@GetMapping("/searchStu")
	public String searchStu(Model model) {
		//학생 정보 조회
		model.addAttribute("stuList", professorService.selectStuList());
		
		return "professor/stu_list";
	}
	
	//교수 시간표
	@GetMapping("/schedule")
	public String schedule(Model model) {
		//강의 리스트 select후 보내기
		//model.addAttribute("lecList", professorService.selectLecList());
		
		
		return "professor/schedule";
	}
	
	
	
	
	
	
	
	
	
}

