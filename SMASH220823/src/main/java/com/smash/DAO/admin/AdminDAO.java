package com.smash.DAO.admin;

import java.util.List;

import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;

public interface AdminDAO {

	List<UserVO> user_list();

	List<ReportVO> user_report();
}
