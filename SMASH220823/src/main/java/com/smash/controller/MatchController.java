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
import com.smash.VO.rate.RateBVO;
import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.service.match.MatchService;
import com.smash.service.rate.RateService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class MatchController {

	private final MatchService match_service;
	private final UserService uService;
	private final RateService ra_service;
	

	

	
	
	/*-------------------- 수정-----------------------------*/

	@GetMapping("/mypage/matchdetail")
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

		return "/mypage/matchdetail";
	}

	@GetMapping("/mypage/match_receive")
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

		return "/mypage/match_receive";
	}
	
	@GetMapping("/mypage/matchinglist")
	public String aa(HttpSession session, UserVO uo, Model m, noticeBVO vo, ReportVO rv) {

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

		return "/mypage/matchinglist";
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

	/*		경기 후 결과 선택			*/
	@PostMapping("/match/result")
	@ResponseBody
	public String result(resultBVO ro,noticeBVO no) {
		String re=null;
		match_service.insert_result(ro);
		match_service.update_apply4(no);
		re="good";
		return re;
	}

	
}
