package com.smash.VO;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private int user_num;
	private String report_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private Date user_date;
}
