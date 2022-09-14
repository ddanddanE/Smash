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
	Cookie idCookie;
	
	//--------------------------------------------------↓0908
	@PostMapping("/logincheck")
	public String logincheck(HttpSession session, HttpServletRequest request,UserVO uvo,HttpServletResponse response) {
		String User_Id = request.getParameter("User_Id");
		String User_Pw = request.getParameter("User_Pw");
		
		uvo.setUser_id(User_Id);
		uvo.setUser_pw(User_Pw);
		
		uvo = uService.login(uvo);
		
		session.setAttribute("user", uvo);
		
		String ck = request.getParameter("idcookie");
		
		if(ck != null ) {
			idCookie = new Cookie("idCookie",User_Id);
			response.addCookie(idCookie);
		}else {
			
		}
		
		return "redirect: /";
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
	
	//회원정보
	@GetMapping("/memberinfo")
	public void memberinfo() {
 	}
	
	@GetMapping("/logout")
	public String logoutget(HttpSession session) {
		session.invalidate();
		return "redirect: /";
	}
	
	@PostMapping("/success")
	public String complete(UserVO uvo, HttpServletRequest request) {
		String User_id = request.getParameter("user_id");
		String User_Sport_Address = request.getParameter("user_sport_address");
		System.out.println(User_Sport_Address);
		uService.insert(uvo);	
		
		return "/user/success";
	}


	@PostMapping("/findIDresult")
	@ResponseBody
	public String findIDresult(UserVO uvo, HttpServletRequest request, Model m) {
		
		String user_name = request.getParameter("name");
		String user_email = request.getParameter("email");
		
		uvo.setUser_name(user_name);
		uvo.setUser_email(user_email);

		uvo = uService.findid(uvo);
		
		if(uvo==null) {
			return "1";
		}else {
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
		
		if(uvo==null) {
			return "1";
		}else {
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

		m.addAttribute("firEmail", firEmail);
		m.addAttribute("secEmail", secEmail);

 		return null;
	}
	@PostMapping("/updatesuccess")
	public String updatesuccess(UserVO uvo,HttpSession session,HttpServletRequest request) {
		
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
		
		if(uvo == null) {
			return "/matchinglist";
		}
		else if(uvo != null) {
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
		if(uvo == null) {
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
		
		if(uvo == null) {
			System.out.println("F");
			return "F";
		}
		System.out.println("T");
		return "T";
	}
}
