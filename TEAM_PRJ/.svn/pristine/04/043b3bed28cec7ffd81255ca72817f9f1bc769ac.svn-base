package com.kh.teamprj.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.teamprj.service.ProfessorService;
import com.kh.teamprj.vo.LecVO;
import com.kh.teamprj.vo.StuScoreVO;
import com.kh.teamprj.vo.member1VO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/pro")
public class ProfessorController {
	@Resource(name="professorService")
	private ProfessorService professorService;
	
	//home으로(임시)
	@GetMapping("/home")
	public String home() {
		return "lec/home";
	}
	
	//강의 등록 페이지로 이동
	@GetMapping("/regLecForm")
	public String regLecForm() {
		//단과대 리스트 (셀렉트 박스에 쓸 예정)
		professorService.selectCollege();
		
		
		return "lec/reg_lec";
	}
	
	//강의 등록
	@PostMapping("/regLec")
	public String regLec(LecVO lecVO, HttpSession session){
		//강의 교수 이름가져와 세팅
			//member1VO member = session.getAttribute("loginInfo");
			//lecVO.setLecPr(member.getName());
		
		//lecVO 정보로 lec를 등록한다
		professorService.insertLec(lecVO);
		
		return "lec/reg_lec";
	}
	
	//성적등록 페이지로 이동
	@GetMapping("/regScoreForm")
	public String regScoreForm(Model model) {
		//강의 리스트
		model.addAttribute("lecList", professorService.selectLecList());
		
		//던져줄 내 강의를 듣고있는 학생 정보들
		
		//던져줄 학기 정보

		
		return "";
	}
	
	//강의 안에 학생
	
	//성적 등록
	@PostMapping("/regScore")
	public String regScore(StuScoreVO scoreVO) {
		
		//scoreVO 정보로 성적 등록
		professorService.insertScore(scoreVO);
		
		return "";
	}
	
	//학생 조회 페이지로 이동
	@GetMapping("/searchStu")
	public String searchStu() {
		//학생 정보 조회
		
		
		return "";
	}
	
	//강의 리스트
	@GetMapping("lecList")
	public String lecList(Model model) {
		//강의 리스트 select후 보내기
		model.addAttribute("lecList", professorService.selectLecList());
		
		
		return "";
	}
	
	
	
	
	
	
	
	
	
}

