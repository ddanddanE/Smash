package com.smash.VO.report;

import java.sql.Date;

import lombok.Data;

@Data
public class ReportVO {
	private String report_title; //�Ű�� ����
	private int report_num; //�Ű�� ��ȣ
	private String report_reason; //�Ű� ����
	private String report_rival; //�Ű��� �̸�
	private String report_id; //�Ű� ���� ��� id
	private Date report_date; //�Ű�¥
	private int no;
	
	
	
}
