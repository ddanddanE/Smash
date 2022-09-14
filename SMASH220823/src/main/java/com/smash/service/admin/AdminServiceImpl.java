package com.smash.service.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smash.DAO.admin.AdminDAO;
import com.smash.VO.report.ReportVO;
import com.smash.VO.user.UserVO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	
	private final AdminDAO adao;
	
	@Override
	public List<UserVO> user_list() {
		return adao.user_list();
	}

	@Override
	public List<ReportVO> user_report() {
		return adao.user_report();
	}

}
