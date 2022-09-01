package com.smash.DAO.user;

import org.springframework.stereotype.Repository;

import com.smash.VO.user.UserBasic;
import com.smash.VO.user.UserVO;
import com.smash.mapper.UserMapper;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class UserDAOImpl implements UserDAO{
	
	private final UserMapper uMap;

	@Override
	public void insert(UserVO uvo) {
		uMap.insert(uvo);
		
	}

	@Override
	public void insert_no(UserVO uvo) {
		uMap.insert_no(uvo);
		
	}

	@Override
	public UserVO login(UserVO vo) {
		System.out.println("다오!!!!"+vo.getUser_id());
		return uMap.login(vo);
	}


}
