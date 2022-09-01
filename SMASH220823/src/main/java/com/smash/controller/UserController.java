package com.smash.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smash.VO.user.UserBasic;
import com.smash.VO.user.UserVO;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user/*")
public class UserController {

	private final UserService uService;

	@GetMapping("/login")
	public String loginget() {
		return "/user/login";
	}

	// 메인페이지에서 로그인 관련 jsp열도록 하는 페이지
	@PostMapping("/login")
	public String loginpost() {
		return "/user/login";
	}

	// 로그인 페이지에서 아이디 비번 치고 맞으면 메인 아니면 다시 여기 페이지
	@PostMapping("/logincheck")
	public String logincheck(HttpSession session, @RequestParam("User_Id") String User_Id, @RequestParam("User_Pw") String User_Pw) {
		
		UserVO vo = new UserVO();
		vo.setUser_id(User_Id);
		vo.setUser_pw(User_Pw);
		
		session.setAttribute("user", uService.login(vo));
		
		return "/user/test";
	}

	// 메인페이지에서 회원가입하면 정보제공 동의
	@GetMapping("/signup/agree")
	public String agree() {
		return "/user/agree";
	}

	// 정보제공 동의에서 인적사항입력
	@PostMapping("/signup")
	public String signup(Model m, HttpServletRequest request) {
		String resultagr = request.getParameter("resultagr");
		m.addAttribute("resultagr", resultagr);

		return "/user/signup";
	}

	@PostMapping("/success")
	public String complete(UserVO uvo, HttpServletRequest request) {
		String User_id = request.getParameter("user_id");
		uvo.setUser_id(User_id.toLowerCase());
		System.out.println(uvo.getUser_id());
		
		int User_agree = Integer.parseInt(request.getParameter("user_agree"));
		uvo.setUser_agree(User_agree);
		
		String User_Sport_Address = request.getParameter("user_sport_address");

		if (User_Sport_Address.toLowerCase().equals("notsubmit")) {
			uService.insert_no(uvo);
		} else {
			uService.insert(uvo);
		}

		return "/user/success";
	}
}
