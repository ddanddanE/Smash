package com.smash.mapper;

import com.smash.VO.user.UserVO;

public interface UserMapper {

	void insert(UserVO uvo);

	void insert_no(UserVO uvo);

	UserVO login(UserVO vo);

	UserVO findid(UserVO uvo);

	UserVO findpw(UserVO uvo);

	UserVO pwChk(UserVO uvo);

	void update(UserVO uvo);

	UserVO idChk(UserVO uvo);

	void delete(UserVO uvo);
}
