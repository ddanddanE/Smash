package com.smash.service.user;

import com.smash.VO.user.UserVO;

public interface UserService {
	
	void insert(UserVO uvo);

	void insert_no(UserVO uvo);

	UserVO login(UserVO vo);
}
