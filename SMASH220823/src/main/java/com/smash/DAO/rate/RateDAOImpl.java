package com.smash.DAO.rate;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;
import com.smash.VO.user.UserVO;
import com.smash.mapper.RateMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Repository
@Log4j
@RequiredArgsConstructor
public class RateDAOImpl implements RateDAO {

	private final RateMapper ra_mapper;

	@Override
	public void rate_insert(RateBVO bo) {
		ra_mapper.rate_insert(bo);
	}

	@Override
	public void rate_insert1(RateBVO bo) {
		ra_mapper.rate_insert1(bo);
	}

	@Override
	public void rate_insert2(RateBVO bo) {
		ra_mapper.rate_insert2(bo);
	}

	@Override
	public void rate_insert3(RateBVO bo) {
		ra_mapper.rate_insert3(bo);
	}

	@Override
	public List<RateBVO> rate_select(RateBVO bo) {
		return ra_mapper.rate_select(bo);
	}

	@Override
	public noticeBVO rate_select2(noticeBVO no) {
		return ra_mapper.rate_select2(no);
	}

	@Override
	public void rate_update(noticeBVO no) {
		ra_mapper.rate_update(no);
	}

	@Override
	public void rate_update2(noticeBVO no) {
		ra_mapper.rate_update2(no);
	}

	@Override
	public List<RateBVO> rate_select1(UserVO uo) {
		return ra_mapper.rate_select1(uo);
	}
}
