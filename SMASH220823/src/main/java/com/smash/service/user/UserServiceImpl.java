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
		return uDao.login(vo);
	}

	@Override
	public UserVO findid(UserVO uvo) {
		return uDao.findid(uvo);
	}

	@Override
	public UserVO findpw(UserVO uvo) {
		System.out.println(uvo.getUser_id());
		return uDao.findpw(uvo);
	}

	@Override
	public UserVO pwChk(UserVO uvo) {
		return uDao.pwChk(uvo);
	}

	@Override
	public void update(UserVO uvo) {
		uDao.update(uvo);
	}

	@Override
	public UserVO idChk(UserVO uvo) {
		return uDao.idChk(uvo);
	}

	@Override
	public void delete(UserVO uvo) {
		uDao.delete(uvo);
	}


}
