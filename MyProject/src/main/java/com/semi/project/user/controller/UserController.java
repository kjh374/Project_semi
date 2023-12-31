package com.semi.project.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.user.dto.RequestDTO;
import com.semi.project.user.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
@Slf4j
public class UserController {

	private final UserService service;

	//회원가입 페이지(동기)
	@GetMapping("/join")
	public void joinPage() {
		log.info("/user/join 요청: GET!");
	}
	
	//회원가입(동기)
	@PostMapping("/join")
	public String join(RequestDTO dto){
		log.info("/user/join 요청: POST! {}", dto);
	    service.regist();
	    return "redirect:/user/uselogin";
	}

	//로그인페이지(동기)
	@GetMapping("/login")
	public void loginPage(){}

	//로그인(동기)
	@PostMapping("/login")
	public String login(RequestDTO dto){
	     log.info("/user/login 요청: POST! {}", dto);
	     return "redirect:/"; //메인페이지로
	}
	
	//마이페이지(동기)
	@GetMapping("/myPage")
	public void myPage() {}
	
	//나의정보관리 페이지(동기)
	@GetMapping("/myInfo")
	public void myInfo() {}
	
	
	//회원정보 수정 요청(동기)
	@PostMapping("/update")
	public String update(RequestDTO dto) {
		log.info("/user/update 요청: POST! {}", dto);
		return "redirect:/user/myPage";
	}
	
	//회원정보 삭제 요청(동기)
	@GetMapping("/delete")
	public String delete(String userId) {
		log.info("/user/delete 요청: POST! {}", userId);
		return "redirect:/"; //메인페이지로? 마이페이지로?
	}
	
	//나의활동 페이지
	
	
	//좋아요 목록 요청(동기)
	@GetMapping("/likeList")
	public List<FtvResponseDTO> getFtvLIkeList(String userId){
	      log.info("/festival/likeList 요청: GET! {}", userId);   
	      return service.getLikeList(userId);
	
	}
	
	//댓글목록 요청(비동기)
	@GetMapping("/reply")
	public List<ReplyResponseDTO> replyList(HttpSession session) {
		return service.getReplyList(session.getAttribute("login"));
	}
	
}
