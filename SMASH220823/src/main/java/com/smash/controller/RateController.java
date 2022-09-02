package com.smash.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smash.VO.match.noticeBVO;
import com.smash.service.rate.RateService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.GetProxy;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/rate")
public class RateController {

	private final RateService ra_service;


	/*-----------------------myPage에서 평점 이동------------------------------------*/
	
	@GetMapping("/rate")
	public String rate2(Model m, noticeBVO no) {

			no = ra_service.rate_select2(no);

			m.addAttribute("userName", no.getNOTICE_MSG_USER());
			m.addAttribute("rivalName", no.getNOTICE_MSG_RIVAL());
		

		return "rate/rate";

	}

	
	
}
