package com.smash.DAO.user;

import com.smash.VO.user.UserBasic;
import com.smash.VO.user.UserVO;

public interface UserDAO {

	void insert(UserVO uvo);

	void insert_no(UserVO uvo);

	UserVO login(UserVO vo);

}
