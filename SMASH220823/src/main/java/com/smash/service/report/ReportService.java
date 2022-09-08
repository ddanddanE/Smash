package com.smash.service.report;

import java.util.List;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

public interface ReportService {
	//신고 횟수
//	int up_report_num(ReportVO rv);
	
	
	//당사자(로그인 한 사람)의 신고 정보
	List<ReportVO> report_sel(PageingNum ba);
	
	//당사자(로그인 한 사람)의 총 신고갯수
	int total_report(PageingNum ba);
	
	//신고글 등록
	public void report_insert(ReportVO rv);
	
	//admin 모든 신고글 출력 0
	public List<ReportVO> report_list(int page_num);
	 
	//admin 신고된 총 글 갯수 0 
	int ad_total_report();
	
	//admin 글읽기(read)
	ReportVO ad_read(int report_num);
	
}
