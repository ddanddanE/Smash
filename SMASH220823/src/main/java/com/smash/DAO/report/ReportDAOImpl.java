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

	
	//userdml �Ű� �� ���
	@Override
	public void report_insert(ReportVO rv) {
		mapper.report_insert(rv);
		
	}

	//admin �Ű�� ��� ��
	@Override
	public List<ReportVO> report_list(int page_num) {
		// TODO Auto-generated method stub
		return mapper.report_list(page_num);
	}

	
	//admin �Ű�� �� �� ����
	@Override
	public int ad_total_report() {
		// TODO Auto-generated method stub
		return mapper.ad_total_report();
	}

	//admin �� �б�(read)
	@Override
	public ReportVO ad_read(int report_num) {
		// TODO Auto-generated method stub
		return mapper.ad_read(report_num);
	}









	
	
	
}
