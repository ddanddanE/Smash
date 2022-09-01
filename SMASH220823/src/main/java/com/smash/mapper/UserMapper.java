package com.smash.mapper;

import com.smash.VO.user.UserBasic;
import com.smash.VO.user.UserVO;

public interface UserMapper {

	void insert(UserVO uvo);

	void insert_no(UserVO uvo);

	UserVO login(UserVO vo);
}
