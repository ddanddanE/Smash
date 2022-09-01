package com.smash.service.user;

import org.springframework.stereotype.Service;

import com.smash.DAO.user.UserDAO;
import com.smash.VO.user.UserVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{
	
	private final UserDAO uDao;

	@Override
	public void insert(UserVO uvo) {
		uDao.insert(uvo);
	}

	@Override
	public void insert_no(UserVO uvo) {
		uDao.insert_no(uvo);
		
	}

	@Override
	public UserVO login(UserVO vo) {
		System.out.println("서비스!!!!!!!"+vo.getUser_id());
		return uDao.login(vo);
	}

}
