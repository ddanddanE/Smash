package com.smash.DAO.rate;

import java.util.List;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;
import com.smash.VO.user.UserVO;


public interface RateDAO {

	public void rate_insert(RateBVO bo);

	public void rate_insert1(RateBVO bo);
	
	public void rate_insert2(RateBVO bo);
	
	public void rate_insert3(RateBVO bo);

	public List<RateBVO> rate_select(RateBVO bo);

	public noticeBVO rate_select2(noticeBVO no);

	public void rate_update(noticeBVO no);

	public void rate_update2(noticeBVO no);
	
	public List<RateBVO> rate_select1(UserVO uo);/* 나의 정보(평점) 출력 */

}
