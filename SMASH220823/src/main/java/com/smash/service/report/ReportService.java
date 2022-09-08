package com.smash.service.report;

import java.util.List;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

public interface ReportService {
	//�Ű� Ƚ��
//	int up_report_num(ReportVO rv);
	
	
	//�����(�α��� �� ���)�� �Ű� ����
	List<ReportVO> report_sel(PageingNum ba);
	
	//�����(�α��� �� ���)�� �� �Ű���
	int total_report(PageingNum ba);
	
	//�Ű�� ���
	public void report_insert(ReportVO rv);
	
	//admin ��� �Ű�� ��� 0
	public List<ReportVO> report_list(int page_num);
	 
	//admin �Ű�� �� �� ���� 0 
	int ad_total_report();
	
	//admin ���б�(read)
	ReportVO ad_read(int report_num);
	
}
