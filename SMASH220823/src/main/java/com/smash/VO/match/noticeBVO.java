package com.smash.VO.match;

import lombok.Data;

@Data
public class noticeBVO {

	private int NOTICE_MSG_NO;
	private String NOTICE_MSG_USER;
	private String NOTICE_MSG_RIVAL;
	private String NOTICE_MSG_STATUS;
	private String NOTICE_MSG_PLACE;
	private String NOTICE_MSG_TIME;
	private int NOTICE_MSG_URATE;
	private int NOTICE_MSG_RRATE;
	
	/*추가*/
	private String NOTICE_MSG_Content;
	private int BOARD_NUM;
	private String BOARD_TITLE;
}
