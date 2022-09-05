package com.smash.service.match;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.smash.DAO.match.MatchDAO;
import com.smash.VO.match.noticeBVO;
import com.smash.VO.user.UserVO;
import com.smash.mapper.MatchMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
@Repository
@Log4j
@RequiredArgsConstructor 
public class MatchServiceImpl implements MatchService {

	
	
	private final MatchDAO match_dao;
	
	
	@Override
	public noticeBVO select_match(noticeBVO mo) {
		return match_dao.select_match(mo);
		
		
	}





	
	@Override
	public List<noticeBVO> select_notice1(UserVO no) {
		
		return match_dao.select_notice1(no);
	}

	@Override
	public List<noticeBVO> select_notice2(UserVO no) {
		
		return match_dao.select_notice2(no);
	}




	
	
	}
