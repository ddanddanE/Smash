package com.smash.controller;

/*
 * 작성자: 누구
 */


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.match.resultBVO;
import com.smash.VO.user.UserVO;
import com.smash.service.match.MatchService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class MatchController {

	private final MatchService match_service;
	private final UserService uService;
	

	/*----------------로그인 id가지고 mypage 이동  user controller로??------------------1---*/
	@GetMapping("/user/myPage")
	public String myPage(Model m,noticeBVO no,@RequestParam("user.user_id")String id, HttpSession session) {
		
		UserVO vo = (UserVO) session.getAttribute("user");
		
		session.setAttribute("user", uService.login(vo));
		
		List<noticeBVO> lo = match_service.select_notice1(vo);
		
		m.addAttribute("lo", lo);
		List<noticeBVO> lo2 = match_service.select_notice2(vo);
		m.addAttribute("lo2", lo2);
		m.addAttribute("id", id);
		
		return "user/myPage";
	}

	/*		경기 후 결과 선택			*/
	@PostMapping("/match/result")
	@ResponseBody
	public String result(resultBVO ro,noticeBVO no) {

		match_service.insert_result(ro);
		match_service.update_apply4(no);
		
		return "Y";
	}
	
}
