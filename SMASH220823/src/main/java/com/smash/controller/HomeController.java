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
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;

import com.smash.VO.user.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequiredArgsConstructor
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	private final MatchService match_service;
	private final RateService ra_service;

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

	@GetMapping("/user/memberinfo")
	public void memberinfo2() {

	}

	/*-------------------- 수정-----------------------------*/

	@GetMapping("/user/matchdetail")
	public String matchdetail2(HttpSession session, UserVO uo, Model m, noticeBVO vo, ReportVO rv) {

		double total = 0;
		int cnt = 0;
		double avg = 0;

		uo = (UserVO) session.getAttribute("user");

		session.setAttribute("user", uo);

		List<noticeBVO> lo = match_service.select_notice1(uo);

		m.addAttribute("lo", lo);

		List<noticeBVO> lo2 = match_service.select_notice2(uo);

		m.addAttribute("lo2", lo2);

		List<RateBVO> bb = ra_service.rate_select1(uo);

		for (RateBVO ba : bb) {
			total = total + ba.getRating();
			cnt++;
		}
		avg = total / cnt;
		String aa = String.format("%.1f", avg);

		m.addAttribute("avg", aa);

		return "/user/matchdetail";
	}

	@GetMapping("/user/match_receive")
	public String match_receive2(HttpSession session, UserVO uo, Model m, noticeBVO vo) {

		double total = 0;
		int cnt = 0;
		double avg = 0;

		uo = (UserVO) session.getAttribute("user");

		session.setAttribute("user", uo);

		List<noticeBVO> lo = match_service.select_notice1(uo);

		m.addAttribute("lo", lo);

		List<RateBVO> bb = ra_service.rate_select1(uo);

		for (RateBVO ba : bb) {
			total = total + ba.getRating();
			cnt++;
		}
		avg = total / cnt;
		String aa = String.format("%.1f", avg);

		m.addAttribute("avg", aa);

		return "/user/match_receive";
	}

	@PostMapping("/user/applyn")
	@ResponseBody
	public String applun(noticeBVO no, @RequestParam("inlineRadioOptions") String anser) {
		String yn = null;
		if (anser.equals("yes")) {
			match_service.update_apply(no);
			match_service.update_apply2(no);
			yn = "Y";
		} else {
			match_service.update_apply3(no);
			yn = "N";
		}

		return yn;
	}

	/**/

}
