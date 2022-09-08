package com.smash.DAO.report;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;
import com.smash.mapper.ReportMapper;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ReportDAOImpl implements ReportDAO{
	
	
		private final ReportMapper mapper;
	
		
	@Override
	public List<ReportVO> report_sel(PageingNum ba) {
		// TODO Auto-generated method stub
		return mapper.report_sel(ba);
	}


	@Override
	public int total_report(PageingNum ba) {
		// TODO Auto-generated method stub
		return mapper.total_report(ba);
	}

	
	//userdml 신고 글 등록
	@Override
	public void report_insert(ReportVO rv) {
		mapper.report_insert(rv);
		
	}

	//admin 신고된 모든 글
	@Override
	public List<ReportVO> report_list(int page_num) {
		// TODO Auto-generated method stub
		return mapper.report_list(page_num);
	}

	
	//admin 신고된 글 총 갯수
	@Override
	public int ad_total_report() {
		// TODO Auto-generated method stub
		return mapper.ad_total_report();
	}

	//admin 글 읽기(read)
	@Override
	public ReportVO ad_read(int report_num) {
		// TODO Auto-generated method stub
		return mapper.ad_read(report_num);
	}









	
	
	
}
