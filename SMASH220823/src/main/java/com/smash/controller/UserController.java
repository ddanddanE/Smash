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

	// 硫붿씤�럹�씠吏��뿉�꽌 濡쒓렇�씤 愿��젴 jsp�뿴�룄濡� �븯�뒗 �럹�씠吏�
	@PostMapping("/login")
	public String loginpost() {
		return "/user/login";
	}

	// 濡쒓렇�씤 �럹�씠吏��뿉�꽌 �븘�씠�뵒 鍮꾨쾲 移섍퀬 留욎쑝硫� 硫붿씤 �븘�땲硫� �떎�떆 �뿬湲� �럹�씠吏�
	@PostMapping("/logincheck")
	public String logincheck(HttpSession session, @RequestParam("User_Id") String User_Id, @RequestParam("User_Pw") String User_Pw) {
		
		UserVO vo = new UserVO();
		vo.setUser_id(User_Id);
		vo.setUser_pw(User_Pw);
		
		session.setAttribute("user", uService.login(vo));
		
		return "/user/test";
	}

	// 硫붿씤�럹�씠吏��뿉�꽌 �쉶�썝媛��엯�븯硫� �젙蹂댁젣怨� �룞�쓽
	@GetMapping("/signup/agree")
	public String agree() {
		return "/user/agree";
	}

	// �젙蹂댁젣怨� �룞�쓽�뿉�꽌 �씤�쟻�궗�빆�엯�젰
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
		
		//test
		//gittest
	}
}
