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

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.service.report.ReportService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/report/*")
public class ReportController {
	
		private final ReportService service;
	

		@GetMapping("/reportid")
		public void page() {
			
		}
		
//		@PostMapping("/reportlist")
//		public void report(@RequestParam("user_id")String report_id, Model m) {
//			m.addAttribute("sel", service.report_sel(report_id));
//			m.addAttribute("count", service.total_report(report_id));
//		
//		}
		
	
			
			
//			if("admin".equals(report_id)) {
//				TotalCount = service.ad_total_report(); //�� ���ñ� ����
//				 listReportVO =  service.report_list(page_num);
//				 
//				 pageJsp = "/report/admin_list";
//			
//			}else {
//				System.out.println(report_id+"----------------------------------");
//				ba.setPage_num(page_num);
//				ba.setReport_id(vo.getUser_id());
//				 TotalCount = service.total_report(ba);
//				 listReportVO =  service.report_sel(ba);
//				 
//				 pageJsp = "/report/reportlist";
//			}
		
		
		
		
//		@GetMapping("/main")
//		public void Test4() {
//			
//		}
//		
//		@PostMapping("/main1")
//		public String Test6(@RequestParam("user_id")String report_id, HttpSession session) {
//			//m.addAttribute("id", report_id);
//			session.setAttribute("id", report_id);
//			
//			
//			return "/report/main1";
//		}
//		
//		@GetMapping("/main1")
//		public void Test20() {
//			
//		}
		
		@PostMapping("/logout")
		public String Test100(HttpSession session) {
			session.invalidate();
			
			
			return "/report/main";
			
		}
	
		@GetMapping("/report_ch")
		public void Test5() {
			
		}
		
		//---------------------------------
		//�Ű� ���?
		@GetMapping("/reportinsert")
		public void reportinsert(HttpSession session, ReportVO rv) {
			UserVO vo = (UserVO) session.getAttribute("user");
			
			
			
			
			//System.out.println(vo.getUser_id()+"!@#!@#!@#!@#!@#!@#@!#");
			
			session.setAttribute("id", vo.getUser_id());
		}
		
		@PostMapping("/reportinsert")
		public String reportinsert1(ReportVO rv, HttpSession session) {
			
			UserVO vo = (UserVO) session.getAttribute("user");
			//String report_id = (String)session.getAttribute("id");
			System.out.println(vo.getUser_id()+"@@@@@@@@@@@@@@@@@@@@@@@");
			
			
			
			
			
			session.setAttribute("id", vo.getUser_id());
			
			
			service.report_insert(rv);
			
			return "redirect:/report/main1";
		}
		
		//-------------------------------------
		//admin �Ű� ����Ʈ
		
		@GetMapping("/admin_list")
		public void ad_list() {
			
		}
		
		@GetMapping("/admin_read")
		public void admin_read(@RequestParam("report_num")int report_num,@RequestParam("report_id")String report_id, Model m) {
			
			m.addAttribute("read", service.ad_read(report_num));
			
			System.out.println(report_id +"---------------------------------------------!");
			
			
			PageingNum ba = new PageingNum();
			
			ba.setReport_id(report_id);
			m.addAttribute("count", service.total_report(ba));
		
			
	
		}
	
		//modal Test?
		@GetMapping("/match_list")
		public String match_list(@RequestParam(value="page_num", defaultValue="1") int page_num,Model m, HttpSession session) {
			//	String report_id = (String)session.getAttribute("id");
			
			//페이징
			PageingNum ba = new PageingNum();
			
			//로그인된 id값 가져옴
			UserVO vo = (UserVO)session.getAttribute("user");
			
			//ReportVO List로 선언
			List<ReportVO> listReportVO;
			
//			System.out.println(page_num+"----------------------------------");
//			System.out.println(vo.getUser_id()+"2222222222222222222");
		
			// ����¡ ���� page_num�� ���� ������
			int TotalCount = 0;
			int pageingTotal = 0; // ������������
			int pageingSize = 10; //��������ư �������� ����
			int pageingStart; //���۵Ǵ� ������
			int pageingEnd; //������������
			
			//�̵� �Ǵ� ������
			String pageJsp;
		
//			if("admin".equals(report_id)) {
//				TotalCount = service.ad_total_report(); //�� ���ñ� ����
//				 listReportVO =  service.report_list(page_num);
//				 
//				 pageJsp = "/report/admin_list";
//			
//			}else {
//				//System.out.println(report_id+"----------------------------------");
//				ba.setPage_num(page_num);
//				ba.setReport_id(report_id);
//				 TotalCount = service.total_report(ba);
//				 listReportVO =  service.report_sel(ba);
//				 
//				 pageJsp = "/report/match_list";
//			}
			
			ba.setPage_num(page_num);
			ba.setReport_id(vo.getUser_id());
			TotalCount = service.total_report(ba);
			listReportVO =  service.report_sel(ba);
			 
			 pageJsp = "/report/match_list";
			
			
			 
			 //���� �κ�..!
			pageingTotal = (int)(Math.ceil((double)TotalCount / pageingSize)); //�� ��µǾ���ϴ� ����¡ ����
			
			//(7-1) / 10 * 10 +1 = 1
			pageingStart = (page_num - 1) / pageingSize * pageingSize + 1; // ���� �������� 10���� �� ������ ��� -1�� �ϸ� ���������� ����,
			pageingEnd = pageingStart + pageingSize - 1; //������ ������.!?
			
			
			if(pageingEnd > pageingTotal) { //������ �������� �� ���������� ū ��� �������������� ����������...!
				pageingEnd = pageingTotal;
			}
			
			m.addAttribute("sel", listReportVO);
			m.addAttribute("count", TotalCount);
			m.addAttribute("page_num", page_num); //���� ������
			m.addAttribute("pageingTotal",pageingTotal); //��ü ������ ����
			m.addAttribute("pageingStart",pageingStart); // ����������
			m.addAttribute("pageingEnd",pageingEnd); //������������
			m.addAttribute("pageingSize", pageingSize); //��������ư �������� ����
			
			return pageJsp;
		}
		
		@PostMapping("/reportProc")
		@ResponseBody
		public String reportProc(ReportVO rv, HttpSession session) {

			String report_id = (String) session.getAttribute("id");

			session.setAttribute("id", report_id);
			service.report_insert(rv);
			
			return "success";

		}
		
		@GetMapping("/TestJsp")
		public void TestJsp() {
			
		}
		
		//-------------------------------------------------------------------0908 !!!!
		//�⺻�� post
		@GetMapping("/reportlist")
		public String report(@RequestParam(value="page_num", defaultValue="1") int page_num, Model m, HttpSession session) {
		
			
			PageingNum ba = new PageingNum();
			UserVO vo = (UserVO) session.getAttribute("user");
			//System.out.println(vo.getUser_id());
			
			//String report_id = (String)session.getAttribute("id");
			List<ReportVO> listReportVO;
			
			System.out.println(page_num+"----------------------------------");
		
			// ����¡ ���� page_num�� ���� ������
			int TotalCount = 0;
			int pageingTotal = 0; // ������������
			int pageingSize = 10; //��������ư �������� ����
			int pageingStart; //���۵Ǵ� ������
			int pageingEnd; //������������
			
			//�̵� �Ǵ� ������
			String pageJsp;
			
				ba.setPage_num(page_num);
				ba.setReport_id(vo.getUser_id());
				TotalCount = service.total_report(ba);
				listReportVO =  service.report_sel(ba);
			 
				pageJsp = "/report/reportlist";
			
			//���� �κ�..!
			pageingTotal = (int)(Math.ceil((double)TotalCount / pageingSize)); //�� ��µǾ���ϴ� ����¡ ����
			
			//(7-1) / 10 * 10 +1 = 1
			pageingStart = (page_num - 1) / pageingSize * pageingSize + 1; // ���� �������� 10���� �� ������ ��� -1�� �ϸ� ���������� ����,
			pageingEnd = pageingStart + pageingSize - 1; //������ ������.!?
			
			
			if(pageingEnd > pageingTotal) { //������ �������� �� ���������� ū ��� �������������� ����������...!
				pageingEnd = pageingTotal;
			}
			
			m.addAttribute("sel", listReportVO);
			m.addAttribute("count", TotalCount);
			m.addAttribute("page_num", page_num); //���� ������
			m.addAttribute("pageingTotal",pageingTotal); //��ü ������ ����
			m.addAttribute("pageingStart",pageingStart); // ����������
			m.addAttribute("pageingEnd",pageingEnd); //������������
			m.addAttribute("pageingSize", pageingSize); //��������ư �������� ����
			
			return pageJsp;
		}
		
}
