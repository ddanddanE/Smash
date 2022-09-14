package com.smash.VO.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int Board_Num;
	private String Board_Sport_Address;
	private double Board_Sport_Address_X;
	private double Board_Sport_Address_Y;
	private String Board_Sport_Address_IMG;
	private String Board_Title;
	private Date Board_ReservationDate;
	private Date Board_ReservationTime;
	private String Board_Content;
	private int Board_TotalPeople;
	private String Board_Category;
	private Date Board_Date;
	private String Board_Id;
	
}
