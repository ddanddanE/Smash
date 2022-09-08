package com.smash.DAO.report;

import java.util.List;

import com.smash.VO.report.PageingNum;
import com.smash.VO.report.ReportVO;

public interface ReportDAO {
	
	//user�� �Ű�� �� ���
	public List<ReportVO> report_sel(PageingNum ba);
	
	//user�� �Ű�� �� �� ����
	public int total_report(PageingNum ba);
	
	
	//�Ű��ϱ�?(insert)
	public void report_insert(ReportVO rv);
	
	
	//admin �Ű�� ��� �� 0
	public List<ReportVO> report_list(int page_num);
	
	//admin �Ű�� �� �� ���� 0 
	public int ad_total_report();
	
	//admin �� �б�
	public ReportVO ad_read(int report_num);
	
	
	
	
}
