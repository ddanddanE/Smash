package com.smash.DAO.match;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.match.resultBVO;
import com.smash.VO.user.UserVO;
import com.smash.mapper.MatchMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
@Repository
@Log4j
@RequiredArgsConstructor 
public class MatchDAOImpl implements MatchDAO {

	private final MatchMapper match_mapper;
	
	
	
	
	@Override
	public noticeBVO select_match(noticeBVO mo) {
		return match_mapper.select_match(mo);	
	}


	
	@Override
	public List<noticeBVO> select_notice1(UserVO no) {
		
		return match_mapper.select_notice1(no);
	}

	@Override
	public List<noticeBVO> select_notice2(UserVO no) {
		
		return match_mapper.select_notice2(no);
	}


	/*추가*/
	@Override
	public void insert_apply(noticeBVO no) {
		match_mapper.insert_apply(no);
	}

	@Override
	public void update_apply(noticeBVO no) {
		match_mapper.update_apply(no);
	}
	@Override
	public void update_apply2(noticeBVO no) {
		match_mapper.update_apply2(no);
	}
	@Override
	public void update_apply3(noticeBVO no) {
		match_mapper.update_apply3(no);
	}
	
	@Override
	public void update_apply4(noticeBVO no) {
		match_mapper.update_apply4(no);
	}
	
	@Override
	public void insert_result(resultBVO mo) {
	
		match_mapper.insert_result(mo);
	}
	
	}
