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
	
//	@Override //�Ű� Ƚ�� ����
//	public int up_report_num(ReportVO rv) {
//		
//		return mapper.up_report_num(rv);
//	}

	@Override //�����(�α��� �� ���)�� �Ű� ����
	public List<ReportVO> report_sel(PageingNum ba) {
		// TODO Auto-generated method stub
		return dao.report_sel(ba);
	}

	@Override
	public int total_report(PageingNum ba) {
		// TODO Auto-generated method stub
		return dao.total_report(ba);
	}
	
	
	//�Ű�� ���
	@Override
	public void report_insert(ReportVO rv) {
		dao.report_insert(rv);
		
	}
	
	
	//admin ��� �Ű�� ��
	@Override
	public List<ReportVO> report_list(int page_num) {
		
		return dao.report_list(page_num);
	}
	
	
	//admin �Ű�� �� �� ����
	@Override
	public int ad_total_report() {
		// TODO Auto-generated method stub
		return dao.ad_total_report();
	}

	//admin �� �б�
	@Override
	public ReportVO ad_read(int report_num) {
		// TODO Auto-generated method stub
		return dao.ad_read(report_num);
	}
	
	
	
	




}
