package com.smash.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
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
	
	@GetMapping("/matchdetail")
	public void matchdetail() {
		
	}
	
		
	@GetMapping("/matchview")
	public void matchview() {
		
	}
	
	@GetMapping("/memberinfo")
	public void memberinfo() {
		
	}
	
	@GetMapping("/password")
	public void password() {
		
	}
	
	@GetMapping("/ranking")
	public void ranking() {
		
	}
	
	@GetMapping("/reportlist")
	public void reportlist() {
		
	}
	
	@GetMapping("/match_receive")
	public void match_receive() {
		
	}
	
	
	@GetMapping("/rate_receive")
	public void rate_receive() {
		
	}
	@GetMapping("/myPage")
	public void myPage() {
		
	}
	
	


	
	
	
}
