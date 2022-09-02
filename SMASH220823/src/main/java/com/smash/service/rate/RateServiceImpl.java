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
	public noticeBVO rate_select2(noticeBVO no) {
		return ra_dao.rate_select2(no);
	}

	
}
