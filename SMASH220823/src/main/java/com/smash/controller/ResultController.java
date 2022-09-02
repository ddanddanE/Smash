package com.smash.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.awt.Image;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.user.UserVO;
import com.smash.service.match.MatchService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class ResultController {

	/*--------------------!삭제예정!---------------------*/
	private final MatchService match_mapper;
	
	private final UserService uService;
	
	
	
	

	/*----------------로그인 id가지고 mypage 이동------------------1---*/
	@GetMapping("/user/myPage")
	public String myPage(Model m,noticeBVO no,@RequestParam("user.user_id")String id,HttpSession session) {
		
		UserVO vo = (UserVO) session.getAttribute("user");
		
		session.setAttribute("user", uService.login(vo));
		
		
		List<noticeBVO> lo = match_mapper.select_notice1(vo);
		
			m.addAttribute("lo", lo);

		List<noticeBVO> lo2 = match_mapper.select_notice2(vo);
		
		m.addAttribute("lo2", lo2);
		
		m.addAttribute("id", id);
		
		return "user/myPage";
	}

}
