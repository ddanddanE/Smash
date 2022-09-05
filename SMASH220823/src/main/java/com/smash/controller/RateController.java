package com.smash.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;
import com.smash.VO.user.UserVO;
import com.smash.service.rate.RateService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.GetProxy;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/rate")
public class RateController {

	private final RateService ra_service;

	private final UserService uService;

	/*-----------------------myPage에서 평점 이동------------------------------------*/

	@GetMapping("/rate")
	public String rate2(Model m, noticeBVO no,@RequestParam("user.user_id")String id) {

		
		m.addAttribute("id", id);
		
		no = ra_service.rate_select2(no);

		m.addAttribute("userName", no.getNOTICE_MSG_USER());
		m.addAttribute("rivalName", no.getNOTICE_MSG_RIVAL());

		return "rate/rate";

	}

	@PostMapping("/rate_success")
	@ResponseBody
	public String good(RateBVO bo, Model m, @RequestParam("rival") String rival, @RequestParam("id") String id,
			noticeBVO no) {

		double total = 0;
		int cnt = 0;
		double avg = 0;
		
		
		/*---------------------------콘텐츠 입력or생략--------------------------------*/
		if (bo.getChe() == null & id.equals(rival)) {
			ra_service.rate_insert1(bo);
		}
		else if(bo.getChe() == null & !id.equals(rival)){
			ra_service.rate_insert2(bo);
		}
		else if(bo.getChe() != null & id.equals(rival)){
			ra_service.rate_insert(bo);
		}else {
			ra_service.rate_insert3(bo);
		}

		/*---------------------------평점 평균--------------------------------*/
		List<RateBVO> bb = ra_service.rate_select(bo);

		for (RateBVO ba : bb) {
			total = total + ba.getRating();
			cnt++;
		}
		avg = total / cnt;
		String aa = String.format("%.1f", avg);

		m.addAttribute("avg", aa);
		m.addAttribute("rival", rival);

		/*----------------------------평점 비활성화------------------------*/
		System.out.println(rival);
		if (id.equals(rival)) {
			ra_service.rate_update2(no);
		} else {
			ra_service.rate_update(no);
		}

		return "suc";
	}

}
