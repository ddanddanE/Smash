package com.smash.DAO.report;

import java.util.List;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

public interface ReportDAO {
	
	//user의 신고된 글 목록
	public List<ReportVO> report_sel(PageingNum ba);
	
	//user의 신고된 글 총 갯수
	public int total_report(PageingNum ba);
	
	
	//신고하기?(insert)
	public void report_insert(ReportVO rv);
	
	
	//admin 신고된 모든 글 0
	public List<ReportVO> report_list(int page_num);
	
	//admin 신고된 총 글 갯수 0 
	public int ad_total_report();
	
	//admin 글 읽기
	public ReportVO ad_read(int report_num);
	
	
	
	
}
