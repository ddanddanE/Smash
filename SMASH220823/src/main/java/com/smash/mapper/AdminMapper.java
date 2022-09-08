package com.smash.mapper;

import java.util.List;

import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;

public interface AdminMapper {
	
	public List<UserVO> user_list();

	public List<ReportVO> user_report();

}
