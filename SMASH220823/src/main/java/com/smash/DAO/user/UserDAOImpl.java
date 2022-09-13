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
	public UserVO login(UserVO vo) {
		return uMap.login(vo);
	}

	@Override
	public UserVO findid(UserVO uvo) {
		return uMap.findid(uvo);
	}

	@Override
	public UserVO findpw(UserVO uvo) {
		return uMap.findpw(uvo);
	}

	@Override
	public UserVO pwChk(UserVO uvo) {
		return uMap.pwChk(uvo);
	}

	@Override
	public void update(UserVO uvo) {
		uMap.update(uvo);
	}

	@Override
	public UserVO idChk(UserVO uvo) {
		return uMap.idChk(uvo);
	}

	@Override
	public void delete(UserVO uvo) {
		uMap.delete(uvo);
	}



}
