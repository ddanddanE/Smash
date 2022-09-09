package com.smash.mapper;

import java.util.List;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

public interface ReportMapper {
	
	//신고횟수 증가.?
//	public int up_report_num(ReportVO rv); 
	
	//admin 모든 신고 정보 리스트 ? 0
	public List<ReportVO> report_list(int page_num);
	
	//admin 총 신고 갯수 0
	public int ad_total_report();
	
	//admin read 0
	public ReportVO ad_read(int report_num);
	
	
	//당사자(로그인 한 사람)의 신고 정보
	public List<ReportVO> report_sel(PageingNum ba);
	
	//특정 사람에 대한 총 신고 글 갯수
	public int total_report(PageingNum ba);
	
	//---------------------------------------------------
	
	//신고 작성
	public void report_insert(ReportVO rv);
	
	
	
	
	
}
