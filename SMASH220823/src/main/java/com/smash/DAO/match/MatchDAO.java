package com.smash.DAO.match;



import java.util.List;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.user.UserVO;



public interface MatchDAO {
	
	
	public List<noticeBVO> select_notice1(UserVO no);
	
	public List<noticeBVO> select_notice2(UserVO no);
	
	
	

}
