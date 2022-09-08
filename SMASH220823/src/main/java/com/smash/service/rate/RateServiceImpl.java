package com.smash.service.rate;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smash.DAO.rate.RateDAO;
import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;
import com.smash.mapper.RateMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor 
public class RateServiceImpl implements RateService{
	
	private final RateDAO ra_dao;
	
	
	@Override
	public void rate_insert(RateBVO bo) {
		
		ra_dao.rate_insert(bo);
		
	}
	
	@Override
	public void rate_insert1(RateBVO bo) {
		
		ra_dao.rate_insert1(bo);	
	}
	
	@Override
	public void rate_insert2(RateBVO bo) {
		ra_dao.rate_insert2(bo);
	}
	
	@Override
	public void rate_insert3(RateBVO bo) {
		ra_dao.rate_insert3(bo);
	}
	
	@Override
	public List<RateBVO> rate_select(RateBVO bo) {
		return ra_dao.rate_select(bo);
	}
	
	@Override
	public noticeBVO rate_select2(noticeBVO no) {
		return ra_dao.rate_select2(no);
	}

	@Override
	public void rate_update(noticeBVO no) {
		ra_dao.rate_update(no);
	}
	@Override
	public void rate_update2(noticeBVO no) {
		ra_dao.rate_update2(no);
	}
}
