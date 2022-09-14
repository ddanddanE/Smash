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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;
import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.service.match.MatchService;
import com.smash.service.rate.RateService;

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

		model.addAttribute("serverTime", formattedDate);

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

	@GetMapping("/matchinglist")
	public void matchinglist() {

	}

	@GetMapping("/join")
	public void join() {

	}

	@GetMapping("/memberinfo")
	public String memberinfo(UserVO uvo, HttpSession session, Model m) {
		uvo = (UserVO) session.getAttribute("user");

		String adr = uvo.getUser_address();

		String adr1 = adr.substring(0, adr.indexOf("@"));
		String adr2 = adr.substring(adr.indexOf("@") + 1, adr.indexOf("#"));
		String adr3 = adr.substring(adr.indexOf("#") + 1, adr.indexOf("("));
		String adr4 = adr.substring(adr.indexOf("(") + 1, adr.indexOf(")"));

		m.addAttribute("adr1", adr1);
		m.addAttribute("adr2", adr2);
		m.addAttribute("adr3", adr3);
		m.addAttribute("adr4", adr4);

		String s_Adr = uvo.getUser_sport_address();

		String s_Adr1 = s_Adr.substring(0, s_Adr.indexOf("@"));
		String s_Adr2 = s_Adr.substring(s_Adr.indexOf("@") + 1, s_Adr.indexOf("#"));
		String s_Adr3 = s_Adr.substring(s_Adr.indexOf("#") + 1, s_Adr.indexOf("("));
		String s_Adr4 = s_Adr.substring(s_Adr.indexOf("(") + 1, s_Adr.indexOf(")"));

		m.addAttribute("s_Adr1", s_Adr1);
		m.addAttribute("s_Adr2", s_Adr2);
		m.addAttribute("s_Adr3", s_Adr3);
		m.addAttribute("s_Adr4", s_Adr4);

		return "/memberinfo";
	}

	@GetMapping("/match_receive")
	public void match_receive() {

	}

	@GetMapping("/findid")
	public void findid() {

	}

	@GetMapping("/findpw")
	public void findpw() {

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

	@GetMapping("/myPage")
	public void myPage() {

	}




	

}
