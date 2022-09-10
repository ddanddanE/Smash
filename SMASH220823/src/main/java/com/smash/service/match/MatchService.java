package com.smash.service.match;



import java.util.List;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.match.resultBVO;
import com.smash.VO.user.UserVO;


public interface MatchService {
	
	
	public List<noticeBVO> select_notice1(UserVO no);/*로그인=방장인 경기 내역 출력*/
	
	public List<noticeBVO> select_notice2(UserVO no);/*로그인=참가자인 경기 내역 출력*/
	
	public noticeBVO select_match(noticeBVO mo);
	
	/*추가*/
	public void insert_apply(noticeBVO mo);     /*매치 신청하기*/

	public void update_apply(noticeBVO mo);    /*방 번호 기준 신청한 유저 전부 거절*/
	
	public void update_apply2(noticeBVO mo);   /*방 번호 기준 수락한 유저만 수락*/
	
	public void update_apply3(noticeBVO mo);   /*방 번호 신청한 유저 거절*/

	public void update_apply4(noticeBVO mo);   /*경기 결과 후 경기 완료 */
	
	
	public void insert_result(resultBVO mo);	/*경기결과 삽입*/
}
