package com.smash.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.service.match.MatchService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequiredArgsConstructor
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private final MatchService match_service;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
		
		
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	
	@GetMapping("/sample")
	public void sample() {
		
	}
	
	@GetMapping("/matchlist")
	public void matchlist() {
		
	}
	
	@GetMapping("/join")
	public void join() {
		
	}
	
	
		
	@GetMapping("/matchview")
	public void matchview() {
		
	}
	
	
	
	@GetMapping("/password")
	public void password() {
		
	}
	
	@GetMapping("/ranking")
	public void ranking() {
		
	}
	
	/*----------------추 후 삭 제    (로그인 전 마이페이지 들어가는 mapping)-------------------------------*/
	@GetMapping("/reportlist")
	public void reportlist() {
		
	}
	
	
	
	
	@GetMapping("/rate_receive")
	public void rate_receive() {
		
	}
	@GetMapping("/matchdetail")
	public void matchdetail() {
		
	}
	@GetMapping("/memberinfo")
	public void memberinfo() {
		
	}

	@GetMapping("/myPage")
	public void myPage() {
		
	}
	
	/*------------------마이페이지 내 페이지 이동  user controller 이동????-----------------------------*/
	
	@GetMapping("/user/reportlist")
	public void reportlist2() {
		
	}

	
	
	@GetMapping("/user/rate_receive")
	public void rate_receive2() {
		
	}

	@GetMapping("/user/matchdetail")
	public String matchdetail2(HttpSession session, UserVO uo,Model m,noticeBVO vo, ReportVO rv) {
			
			uo = (UserVO)session.getAttribute("user");
			
			
			session.setAttribute("user", uo);
			
			List<noticeBVO> lo = match_service.select_notice1(uo);
			
			m.addAttribute("lo", lo);

			List<noticeBVO> lo2 = match_service.select_notice2(uo);
		
			m.addAttribute("lo2", lo2);
			
		
			return "/user/matchdetail";
	}
	
	@GetMapping("/user/match_receive")
	public String match_receive2(HttpSession session, UserVO uo,Model m,noticeBVO vo, ReportVO rv) {
			
			uo = (UserVO)session.getAttribute("user");
			
			
			session.setAttribute("user", uo);
			
			List<noticeBVO> lo = match_service.select_notice1(uo);
			
			m.addAttribute("lo", lo);

			List<noticeBVO> lo2 = match_service.select_notice2(uo);
		
			m.addAttribute("lo2", lo2);
			
		
			return "/user/match_receive";
	}
	
	
	@GetMapping("/user/memberinfo")
	public void memberinfo2() {
		
	}
	
	
	
}
