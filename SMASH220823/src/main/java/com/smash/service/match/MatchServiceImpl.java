package com.smash.service.match;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.smash.DAO.match.MatchDAO;
import com.smash.VO.match.noticeBVO;
<<<<<<< HEAD
=======
import com.smash.VO.match.resultBVO;
>>>>>>> 의영
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


<<<<<<< HEAD


=======
	/*추가*/
	@Override
	public void insert_apply(noticeBVO no) {
		match_dao.insert_apply(no);
	}
	@Override
	public void update_apply(noticeBVO no) {
		match_dao.update_apply(no);
	}
	
	@Override
	public void update_apply2(noticeBVO no) {
		match_dao.update_apply2(no);
	}
	
	@Override
	public void update_apply3(noticeBVO no) {
		match_dao.update_apply3(no);
	}
	
	@Override
	public void update_apply4(noticeBVO no) {
		match_dao.update_apply4(no);
	}
	

	@Override
	public void insert_result(resultBVO mo) {
	
		match_dao.insert_result(mo);
	}
	
>>>>>>> 의영
	
	
	}
