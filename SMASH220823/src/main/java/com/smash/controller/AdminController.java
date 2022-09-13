package com.smash.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.service.admin.AdminService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/smashad/*")
public class AdminController {
	@GetMapping("/index")
	public String index() {
		return "admin/index";
	}
	@GetMapping("/tables")
	public String tables() {
		return "admin/tables";
	}
	@GetMapping("/404")
	public String page404() {
		return "admin/404";
	}
	@GetMapping("/buttons")
	public String buttons() {
		return "admin/buttons";
	}
	@GetMapping("/cards")
	public String cards() {
		return "admin/cards";
	}
	@GetMapping("/charts")
	public String charts() {
		return "admin/charts";
	}
	@GetMapping("/utilities-animation")
	public String utilitiesanimation() {
		return "admin/utilities-animation";
	}
	@GetMapping("/utilities-border")
	public String utilitiesborder() {
		return "admin/utilities-border";
	}
	@GetMapping("/utilities-color")
	public String utilitiescolor() {
		return "admin/utilities-color";
	}
	@GetMapping("/utilities-other")
	public String utilitiesother() {
		return "admin/utilities-other";
	}
	/* 본문 */
	
	private final AdminService aservice;
	
	@GetMapping("/user_List")
	public String user_list(Model m) {
		List<UserVO> list = aservice.user_list();
		
		for (UserVO uvo : list) {
			System.out.println(uvo.getUser_id());
		}
		
		m.addAttribute("list", list);
		return "admin/user_List";
	}
	
	@GetMapping("/user_Report")
	public String user_report(Model m) {
		List<ReportVO> list  = aservice.user_report();
		m.addAttribute("list", list);
		return "admin/user_Report";
	}

	@GetMapping("/Sales")
	public String sales() {
		return "admin/Sales";
	}
	
	@GetMapping("/manage_adminAcc")
	public String manage_adminacc() {
		return "admin/manage_adminAcc";
	}

	@GetMapping("/notice")
	public String notice() {
		return "admin/notice";
	}

	@GetMapping("/depart_Info")
	public String depart_info() {
		return "admin/depart_info";
	}
}
