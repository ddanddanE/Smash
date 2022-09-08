package com.smash.service.match;



import java.util.List;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.user.UserVO;


public interface MatchService {
	
	
	public List<noticeBVO> select_notice1(UserVO no);/*로그인=방장인 경기 내역 출력*/
	
	public List<noticeBVO> select_notice2(UserVO no);/*로그인=참가자인 경기 내역 출력*/
	
	public noticeBVO select_match(noticeBVO mo);


}
