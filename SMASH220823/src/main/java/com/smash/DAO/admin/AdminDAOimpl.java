package com.smash.DAO.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;
import com.smash.mapper.AdminMapper;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class AdminDAOimpl implements AdminDAO{
	
	private final AdminMapper aMap;
	
	@Override
	public List<UserVO> user_list() {
		return aMap.user_list();
	}

	@Override
	public List<ReportVO> user_report() {
		return aMap.user_report();
	}

}
