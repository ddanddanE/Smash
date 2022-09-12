package com.smash.service.rate;

import java.util.List;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.rate.RateBVO;
<<<<<<< HEAD
=======
import com.smash.VO.user.UserVO;
>>>>>>> 의영

public interface RateService {

	public void rate_insert(RateBVO bo);/* 평점insert */

	public void rate_insert1(RateBVO bo);/* 평점insert(코멘트 null값) */
	
	public void rate_insert2(RateBVO bo);
	
	public void rate_insert3(RateBVO bo);

	public List<RateBVO> rate_select(RateBVO bo);/* 상대 정보(평점) 출력 */

	public noticeBVO rate_select2(noticeBVO no);/* 알림번호 가지고 매칭 방장,참가자 셀렉트 */

	public void rate_update(noticeBVO no);/* 방장이 평점매긴 후 평점 비활성화 */

	public void rate_update2(noticeBVO no);/* 도전자가 평점매긴 후 평점 비활성화 */

<<<<<<< HEAD
=======
	public List<RateBVO> rate_select1(UserVO uo);/* 나의 정보(평점) 출력 */
	
	
>>>>>>> 의영
}
