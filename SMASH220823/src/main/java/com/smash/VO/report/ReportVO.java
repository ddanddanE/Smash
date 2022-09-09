package com.smash.VO.report;

import java.sql.Date;

import lombok.Data;

@Data
public class ReportVO {
	private String report_title; //신고글 제목
	private int report_num; //신고글 번호
	private String report_reason; //신고 이유
	private String report_rival; //신고자 이름
	private String report_id; //신고 당한 사람 id
	private Date report_date; //신고날짜
	private int no;
	
	
	
}
