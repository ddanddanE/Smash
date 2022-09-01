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

	// 筌롫뗄�뵥占쎈읂占쎌뵠筌욑옙占쎈퓠占쎄퐣 嚥≪뮄�젃占쎌뵥 �꽴占쏙옙�졃 jsp占쎈였占쎈즲嚥∽옙 占쎈릭占쎈뮉 占쎈읂占쎌뵠筌욑옙
	@PostMapping("/login")
	public String loginpost() {
		return "/user/login";
	}

	// 嚥≪뮄�젃占쎌뵥 占쎈읂占쎌뵠筌욑옙占쎈퓠占쎄퐣 占쎈툡占쎌뵠占쎈탵 �뜮袁⑥쓰 燁살꼵�� 筌띿쉸�몵筌롳옙 筌롫뗄�뵥 占쎈툡占쎈빍筌롳옙 占쎈뼄占쎈뻻 占쎈연疫뀐옙 占쎈읂占쎌뵠筌욑옙
	@PostMapping("/logincheck")
	public String logincheck(HttpSession session, @RequestParam("User_Id") String User_Id, @RequestParam("User_Pw") String User_Pw) {
		
		UserVO vo = new UserVO();
		vo.setUser_id(User_Id);
		vo.setUser_pw(User_Pw);
		
		session.setAttribute("user", uService.login(vo));
		
		return "/user/test";
	}

	// 筌롫뗄�뵥占쎈읂占쎌뵠筌욑옙占쎈퓠占쎄퐣 占쎌돳占쎌뜚揶쏉옙占쎌뿯占쎈릭筌롳옙 占쎌젟癰귣똻�젫�⑨옙 占쎈짗占쎌벥
	@GetMapping("/signup/agree")
	public String agree() {
		return "/user/agree";
	}

	// 占쎌젟癰귣똻�젫�⑨옙 占쎈짗占쎌벥占쎈퓠占쎄퐣 占쎌뵥占쎌읅占쎄텢占쎈퉮占쎌뿯占쎌젾
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
		//asdf
	}
}
