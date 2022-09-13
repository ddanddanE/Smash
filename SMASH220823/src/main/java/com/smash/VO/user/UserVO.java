package com.smash.VO.user;

import lombok.Data;

@Data
public class UserVO {
	private String user_id;
	private String user_img;
	private String user_pw;
	private String user_name;
	private String user_resinum;
	private String user_email;
	private String user_phonenum;
	private String user_birthday;
	private String user_gender;
	private String user_address;
	private String user_sport_address;
	private float user_sport_address_x;
	private float user_sport_address_y;
	private String user_sport_address_img;
	private int user_total;
	private int user_win;
	private int user_lose;
	private int user_point;
	private String user_signDate;
}
