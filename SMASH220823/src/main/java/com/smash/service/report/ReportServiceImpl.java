package com.smash.service.report;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smash.DAO.report.ReportDAO;
import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class ReportServiceImpl implements ReportService{
		
		private final ReportDAO dao;
	
//	@Override //신고 횟수 증가
//	public int up_report_num(ReportVO rv) {
//		
//		return mapper.up_report_num(rv);
//	}

	@Override //당사자(로그인 한 사람)의 신고 정보
	public List<ReportVO> report_sel(PageingNum ba) {
		// TODO Auto-generated method stub
		return dao.report_sel(ba);
	}

	@Override
	public int total_report(PageingNum ba) {
		// TODO Auto-generated method stub
		return dao.total_report(ba);
	}
	
	
	//신고글 등록
	@Override
	public void report_insert(ReportVO rv) {
		dao.report_insert(rv);
		
	}
	
	
	//admin 모든 신고된 글
	@Override
	public List<ReportVO> report_list(int page_num) {
		
		return dao.report_list(page_num);
	}
	
	
	//admin 신고된 총 글 갯수
	@Override
	public int ad_total_report() {
		// TODO Auto-generated method stub
		return dao.ad_total_report();
	}

	//admin 글 읽기
	@Override
	public ReportVO ad_read(int report_num) {
		// TODO Auto-generated method stub
		return dao.ad_read(report_num);
	}
	
	
	
	




}
