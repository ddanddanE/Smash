package com.smash.DAO.rate;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.smash.VO.match.noticeBVO;
import com.smash.mapper.RateMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Repository
@Log4j
@RequiredArgsConstructor 
public class RateDAOImpl implements RateDAO{

	private final RateMapper ra_mapper;
	
	

	@Override
	public noticeBVO rate_select2(noticeBVO no) {
		return ra_mapper.rate_select2(no);
	}
	
	
}
