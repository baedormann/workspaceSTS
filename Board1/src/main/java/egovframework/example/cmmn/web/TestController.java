package egovframework.example.cmmn.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.sample.VO.ReplyVO;
import egovframework.example.sample.VO.TestVO;
import egovframework.example.sample.service.OracleService;
import egovframework.example.sample.service.TestService;

@Controller
public class TestController {

	@Autowired
	private TestService testService;
	@Autowired
	private OracleService oracleService;
	
	//로그인페이지로 이동
	@GetMapping("/loginForm.do")
	public String loginForm() {
		return "test/loginForm";
	}
	//회원가입페이지로 이동
	@GetMapping("/joinForm.do")
	public String joinForm() {
		return "test/joinForm";
	}
	
	//게시물 목록 조회
	@RequestMapping(value="/boardList.do")
	public String testListDo(TestVO testVO, Model model) throws Exception{
		
		model.addAttribute("list", testService.selectBoardList(testVO));
		
		return "test/boardList";
	}
	
	//게시물 등록화면으로 이동
	@GetMapping("/regBoard.do")
	public String regBoard(){
		return "test/regBoard";
	}
	
	//게시물 등록버튼 클릭 시
	@PostMapping("/regBoard.do")
	public String regBoard(TestVO testVO, Model model) throws Exception{
		testService.insertBoard(testVO);
		return "redirect:/boardList.do";
	}

	//게시물 상세조회
	@GetMapping("/boardDetail.do")
	public String boardDetail(TestVO testVO, Model model) throws Exception{
		model.addAttribute("board", testService.selectBoardDetail(testVO));
		model.addAttribute("replyList", testService.selectReplyList(testVO));
		
		return "test/boardDetail";
	}
	
	//게시물 수정화면 ajax
	@ResponseBody
	@GetMapping("/updateBoardForm.do")
	public void updateBoardForm() throws Exception{
	}
	
	//게시물 수정 완료 시
	@PostMapping("/updateBoard.do")
	public String updateBoard(TestVO testVO, Model model) throws Exception{
		testService.updateBoard(testVO);
		return "redirect:/boardDetail.do?id=" + testVO.getId(); //return type이 String일 땐 객체가 스크립트단으로 잘 넘어가는데 VO객체를 return할 땐 404오류 발생
	}

	//게시물 삭제
	@GetMapping("/deleteBoard.do")
	public String deleteBoard(TestVO testVO, Model model) throws Exception{
		testService.deleteBoard(testVO);
		return "redirect:/boardList.do";
	}
	
	//댓글 등록
	@PostMapping("/regReply.do")
	public String insertBoard(ReplyVO replyVO, Model model) throws Exception {
		testService.insertReply(replyVO);
		
		return "redirect:/boardDetail.do?id=" + replyVO.getReference_board();
	}
	//대댓글 등록창 띄우기
	@ResponseBody
	@PostMapping("/showRegReply.do")
	public List<ReplyVO> showRegReply(TestVO testVO) throws Exception {
		return testService.selectReplyList(testVO);
	}
	
	
}
