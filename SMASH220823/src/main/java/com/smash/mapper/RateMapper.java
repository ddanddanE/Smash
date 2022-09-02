package com.smash.mapper;

import java.util.List;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;


public interface RateMapper {

	public void rate_insert(RateBVO bo);

	public void rate_insert1(RateBVO bo);

	public List<RateBVO> rate_select(RateBVO bo);

	public noticeBVO rate_select2(noticeBVO no);

	public void rate_update(noticeBVO no);

	public void rate_update2(noticeBVO no);

}
