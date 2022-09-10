package com.smash.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.service.match.MatchService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user/*")
public class UserController {

	private final UserService uService;
	private final MatchService match_service;



	
	
	//--------------------------------------------------↓0908
	@PostMapping("/logincheck")
	public String logincheck(HttpSession session, @RequestParam("User_Id") String User_Id, @RequestParam("User_Pw") String User_Pw) {
		
		UserVO vo = new UserVO();
		vo.setUser_id(User_Id);
		vo.setUser_pw(User_Pw);
		
		session.setAttribute("user", uService.login(vo));
		
		return "/user/main";
	}
	
	@PostMapping("/login")
	public String loginpost() {
		return "/";
	}
	
	//나의 매칭 목록
	@GetMapping("/matchinglist")
	public String aa(HttpSession session, UserVO uo,Model m,noticeBVO vo, ReportVO rv) {
		
		uo = (UserVO)session.getAttribute("user");
		
		
		session.setAttribute("user", uo);
		
		List<noticeBVO> lo = match_service.select_notice1(uo);
		
		m.addAttribute("lo", lo);

		List<noticeBVO> lo2 = match_service.select_notice2(uo);
	
		m.addAttribute("lo2", lo2);
		
	
		return "/user/matchinglist";
	}
	


	
	
	
	

	//------------------------------------------------------------- ↑0908
	

	@PostMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect: /main";
	}

	// 嚥≪뮄�젃占쎌뵥 占쎈읂占쎌뵠筌욑옙占쎈퓠占쎄퐣 占쎈툡占쎌뵠占쎈탵 �뜮袁⑥쓰 燁살꼵�� 筌띿쉸�몵筌롳옙 筌롫뗄�뵥 占쎈툡占쎈빍筌롳옙
	// 占쎈뼄占쎈뻻 占쎈연疫뀐옙 占쎈읂占쎌뵠筌욑옙
	
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
		int User_agree = Integer.parseInt(request.getParameter("user_agree"));
		String User_Sport_Address = request.getParameter("user_sport_address");

		uvo.setUser_id(User_id.toLowerCase());
		uvo.setUser_agree(User_agree);
		System.out.println(uvo.getUser_id());

		if (User_Sport_Address.toLowerCase().equals("notsubmit")) {
			uService.insert_no(uvo);
		} else {
			uService.insert(uvo);
		}

		return "/user/success";
	}

	@GetMapping("/findID")
	public String findID() {
		return "/user/findID";
	}

	@PostMapping("/findIDresult")
	public String findIDresult(UserVO uvo, HttpServletRequest request, Model m) {
		String user_name = request.getParameter("User_name");
		String user_resinum = request.getParameter("User_resi");
		String user_phonenum = request.getParameter("User_PhoneNum");

		uvo.setUser_id(user_name);
		uvo.setUser_resinum(user_resinum);
		uvo.setUser_phonenum(user_phonenum);

		uvo = uService.findid(uvo);

		m.addAttribute("user", uvo);

		return "/user/findIDresult";
	}

	@GetMapping("/findPW")
	public String findPW() {
		return "/user/findPW";
	}

	@PostMapping("/findPWresult")
	public String findPWresult(UserVO uvo, HttpServletRequest request, Model m) {
		String user_id = request.getParameter("User_id").toLowerCase();
		String user_name = request.getParameter("User_name");
		String user_resinum = request.getParameter("User_resi");
		String user_phonenum = request.getParameter("User_PhoneNum");

		uvo.setUser_id(user_id);
		uvo.setUser_name(user_name);
		uvo.setUser_resinum(user_resinum);
		uvo.setUser_phonenum(user_phonenum);

		uvo = uService.findpw(uvo);

		System.out.println(uvo.getUser_pw());

		m.addAttribute("user", uvo);

		return "/user/findPWresult";
	}

	@PostMapping("/update")
	public String update(UserVO uvo, HttpSession session, Model m) {
		uvo = (UserVO) session.getAttribute("user");
		String email = uvo.getUser_email();
		String firEmail = email.substring(0, email.indexOf("@"));
		String secEmail = email.substring(email.indexOf("@") + 1);

		String adr = uvo.getUser_address();

		String adr1 = adr.substring(0, adr.indexOf("@"));
		String adr2 = adr.substring(adr.indexOf("@") + 1, adr.indexOf("#"));
		String adr3 = adr.substring(adr.indexOf("#") + 1, adr.indexOf("("));
		String adr4 = adr.substring(adr.indexOf("(") + 1, adr.indexOf(")"));

		System.out.println(adr1);
		System.out.println(adr2);
		System.out.println(adr3);
		System.out.println(adr4);

		m.addAttribute("firEmail", firEmail);
		m.addAttribute("secEmail", secEmail);

		m.addAttribute("adr1", adr1);
		m.addAttribute("adr2", adr2);
		m.addAttribute("adr3", adr3);
		m.addAttribute("adr4", adr4);

		String s_Adr = uvo.getUser_sport_address();
		System.out.println(s_Adr);
		if (s_Adr == null || s_Adr.equals("notsubmit")) {
			m.addAttribute("s_Adr1", "");
			m.addAttribute("s_Adr2", "");
			m.addAttribute("s_Adr3", "");
			m.addAttribute("s_Adr4", "");
		} else {
			String s_Adr1 = s_Adr.substring(0, s_Adr.indexOf("@"));
			String s_Adr2 = s_Adr.substring(s_Adr.indexOf("@") + 1, s_Adr.indexOf("#"));
			String s_Adr3 = s_Adr.substring(s_Adr.indexOf("#") + 1, s_Adr.indexOf("("));
			String s_Adr4 = s_Adr.substring(s_Adr.indexOf("(") + 1, s_Adr.indexOf(")"));

			System.out.println(s_Adr1);
			System.out.println(s_Adr2);
			System.out.println(s_Adr3);
			System.out.println(s_Adr4);

			m.addAttribute("s_Adr1", s_Adr1);
			m.addAttribute("s_Adr2", s_Adr2);
			m.addAttribute("s_Adr3", s_Adr3);
			m.addAttribute("s_Adr4", s_Adr4);
		}

		System.out.println(s_Adr);

		return null;
	}
	@PostMapping("/updatesuccess")
	public String updatesuccess(UserVO uvo,HttpSession session,HttpServletRequest request) {
		
		uvo = (UserVO) session.getAttribute("user");
		
		String name = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		String phoneNum = request.getParameter("user_phonenum");
		String birth = request.getParameter("user_birthday");
		String address = request.getParameter("user_address");
		String sport_Address = request.getParameter("user_sport_address");
		
		uvo.setUser_name(name);
		uvo.setUser_email(email);
		uvo.setUser_phonenum(phoneNum);
		uvo.setUser_birthday(birth);
		uvo.setUser_address(address);
		uvo.setUser_sport_address(sport_Address);
		
		uService.update(uvo);
		
		return "/user/test";
	}
	@PostMapping("/delete")
	public String delete(UserVO uvo, HttpSession session) {
		uvo = (UserVO) session.getAttribute("user");
		
		if(uvo == null) {
			return "/user/test";
		}
		else if(uvo != null) {
			uService.delete(uvo);
			session.invalidate();
			
			return "redirect: /user/login";
		}
		
		return null;
		
	}
	
	/* AJAX */
	@PostMapping("/pwChk")
	@ResponseBody
	public String pwChk(UserVO uvo, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		uvo.setUser_id(id);
		uvo.setUser_pw(pw);
		
		uvo = uService.pwChk(uvo);
		if(uvo == null) {
			System.out.println("F");
			return "F";
		}
		System.out.println("T");
		return "T";
	}
	@PostMapping("/idChk")
	@ResponseBody
	public String idChk(UserVO uvo, HttpServletRequest request) {
		String id = request.getParameter("id");
		uvo.setUser_id(id);
		
		uvo = uService.idChk(uvo);
		
		if(uvo == null) {
			System.out.println("F");
			return "F";
		}
		System.out.println("T");
		return "T";
	}
	
	
	/*--------------------------------------시작-------------------------------------------------*/
	/*--------------------------------------로그인 후 matchlist이동-------------------------------------------------*/
	@GetMapping("/matchlist")
	public String aa3(HttpSession session, UserVO uo,Model m) {
		
		uo = (UserVO)session.getAttribute("user");
		
		
		session.setAttribute("user", uo);
		
		
	
		return "/user/matchlist";
	}
	
	/*--------------------------------------신청하기 누르면 실행-------------------------------------------------*/
	@PostMapping("/apply_suc")
	@ResponseBody
	public String good(noticeBVO no) {
		
		
		
		match_service.insert_apply(no);		
		
		return "suc";
	}
	
}
