package com.smash.mapper;

import java.util.List;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

public interface ReportMapper {
	
	//�Ű�Ƚ�� ����.?
//	public int up_report_num(ReportVO rv); 
	
	//admin ��� �Ű� ���� ����Ʈ ? 0
	public List<ReportVO> report_list(int page_num);
	
	//admin �� �Ű� ���� 0
	public int ad_total_report();
	
	//admin read 0
	public ReportVO ad_read(int report_num);
	
	
	//�����(�α��� �� ���)�� �Ű� ����
	public List<ReportVO> report_sel(PageingNum ba);
	
	//Ư�� ����� ���� �� �Ű� �� ����
	public int total_report(PageingNum ba);
	
	//---------------------------------------------------
	
	//�Ű� �ۼ�
	public void report_insert(ReportVO rv);
	
	
	
	
	
}
