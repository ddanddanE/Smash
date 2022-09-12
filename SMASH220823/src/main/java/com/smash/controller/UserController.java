package com.smash.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.smash.service.rate.RateService;
import com.smash.service.user.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user/*")
public class UserController {

	private final UserService uService;
	private final MatchService match_service;
	private final RateService ra_service;
	Cookie idCookie;

	// --------------------------------------------------↓0908
	@PostMapping("/logincheck")
	public String logincheck(HttpSession session, HttpServletRequest request, UserVO uvo,
			HttpServletResponse response) {
		String User_Id = request.getParameter("User_Id");
		String User_Pw = request.getParameter("User_Pw");

		uvo.setUser_id(User_Id);
		uvo.setUser_pw(User_Pw);

		uvo = uService.login(uvo);

		session.setAttribute("user", uvo);

		String ck = request.getParameter("idcookie");

		if (ck != null) {
			idCookie = new Cookie("idCookie", User_Id);
			response.addCookie(idCookie);
		} else {

		}

		return "redirect: /";
	}

	// 회원정보
	@GetMapping("/memberinfo")
	public void memberinfo(UserVO uvo, HttpSession session, Model m) {
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
	}

	// 나의 신청내역
	@GetMapping("/matchdetail")
	public String matchdetail2(HttpSession session, UserVO uo, Model m, noticeBVO vo, ReportVO rv) {

		uo = (UserVO) session.getAttribute("user");

		session.setAttribute("user", uo);

		List<noticeBVO> lo = match_service.select_notice1(uo);

		m.addAttribute("lo", lo);

		List<noticeBVO> lo2 = match_service.select_notice2(uo);

		return "/user/test";
	}

	@PostMapping("/login")
	public String loginpost() {
		return "/";
	}

	// 나의 매칭 목록
	@GetMapping("/matchinglist")
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

		return "/user/matchinglist";
	}

	// ------------------------------------------------------------- ↑0908

	@PostMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect: /main";
	}

	@GetMapping("/logout")
	public String logoutget(HttpSession session) {
		session.invalidate();
		return "redirect: /";
	}

	@PostMapping("/logout")
	public String logoutpost(HttpSession session) {
		session.invalidate();
		return "redirect: /";
	}

	// 嚥≪뮄�젃占쎌뵥 占쎈읂占쎌뵠筌욑옙占쎈퓠占쎄퐣 占쎈툡占쎌뵠占쎈탵 �뜮袁⑥쓰 燁살꼵�� 筌띿쉸�몵筌롳옙 筌롫뗄�뵥 占쎈툡占쎈빍筌롳옙
	// 占쎈뼄占쎈뻻 占쎈연疫뀐옙 占쎈읂占쎌뵠筌욑옙

	// 筌롫뗄�뵥占쎈읂占쎌뵠筌욑옙占쎈퓠占쎄퐣 占쎌돳占쎌뜚揶쏉옙占쎌뿯占쎈릭筌롳옙 占쎌젟癰귣똻�젫�⑨옙 占쎈짗占쎌벥
	@GetMapping("/signup/agree")
	public String agree() {
		return "/user/agree";
	}

	@PostMapping("/success")
	public String complete(UserVO uvo, HttpServletRequest request) {
		String User_id = request.getParameter("user_id");
		String User_Sport_Address = request.getParameter("user_sport_address");

		uService.insert(uvo);

		return "/user/success";
	}

	@GetMapping("/findID")
	public String findID() {
		return "/user/findID";
	}

	@PostMapping("/findIDresult")
	@ResponseBody
	public String findIDresult(UserVO uvo, HttpServletRequest request, Model m) {

		String user_name = request.getParameter("name");
		String user_email = request.getParameter("email");

		uvo.setUser_name(user_name);
		uvo.setUser_email(user_email);

		uvo = uService.findid(uvo);

		if (uvo == null) {
			return "1";
		} else {
			m.addAttribute("user", uvo);
			return uvo.getUser_id();
		}

	}

	@GetMapping("/findPW")
	public String findPW() {
		return "/user/findPW";
	}

	@PostMapping("/findPWresult")
	@ResponseBody
	public String findPWresult(UserVO uvo, HttpServletRequest request, Model m) {
		String user_id = request.getParameter("id").toLowerCase();
		String user_name = request.getParameter("name");
		String user_email = request.getParameter("email");

		uvo.setUser_id(user_id);
		uvo.setUser_name(user_name);
		uvo.setUser_email(user_email);

		uvo = uService.findpw(uvo);

		if (uvo == null) {
			return "1";
		} else {
			m.addAttribute("user", uvo);
			return uvo.getUser_pw();
		}
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
	public String updatesuccess(UserVO uvo, HttpSession session, HttpServletRequest request) {

		uvo = (UserVO) session.getAttribute("user");

		String pw = request.getParameter("user_pw");
		String email = request.getParameter("user_email");
		String phoneNum = request.getParameter("user_phonenum");
		String address = request.getParameter("user_address");
		String sport_Address = request.getParameter("user_sport_address");

		uvo.setUser_email(email);
		uvo.setUser_phonenum(phoneNum);
		uvo.setUser_address(address);
		uvo.setUser_sport_address(sport_Address);

		uService.update(uvo);
		session.invalidate();

		return "redirect: /";
	}

	@GetMapping("/delete")
	public String delete(UserVO uvo, HttpSession session) {
		uvo = (UserVO) session.getAttribute("user");

		if (uvo == null) {
			return "/matchinglist";
		} else if (uvo != null) {
			uService.delete(uvo);
			session.invalidate();

			return "redirect: /";
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
		if (uvo == null) {
			System.out.println("F");
			return "F";
		}
		uService.update(uvo);
		System.out.println("T");
		return "T";
	}

	@PostMapping("/idChk")
	@ResponseBody
	public String idChk(UserVO uvo, HttpServletRequest request) {
		String id = request.getParameter("id");
		uvo.setUser_id(id);

		uvo = uService.idChk(uvo);

		if (uvo == null) {
			System.out.println("F");
			return "F";
		}
		System.out.println("T");
		return "T";
	}

	@GetMapping("/matchlist")
	public String aa3(HttpSession session, UserVO uo, Model m) {

		uo = (UserVO) session.getAttribute("user");

		session.setAttribute("user", uo);

		return "/user/matchlist";
	}

	@PostMapping("/apply_suc")
	/*--------------------------------------신청하기 누르면 실행-------------------------------------------------*/

	@ResponseBody
	public String good(noticeBVO no) {

		match_service.insert_apply(no);

		return "suc";
	}

}
