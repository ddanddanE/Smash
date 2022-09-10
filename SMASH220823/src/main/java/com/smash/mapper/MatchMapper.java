package com.smash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smash.VO.match.noticeBVO;
import com.smash.VO.match.resultBVO;
import com.smash.VO.user.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


public interface MatchMapper {

	
	
	public List<noticeBVO> select_notice1(UserVO no);
	public List<noticeBVO> select_notice2(UserVO no);
	
	public noticeBVO select_match(noticeBVO mo);
	
	/*추가*/
	public void insert_apply(noticeBVO mo);

	public void update_apply(noticeBVO mo);
	
	public void update_apply2(noticeBVO mo);
	
	public void update_apply3(noticeBVO mo);
	
	public void update_apply4(noticeBVO mo);
	
	public void insert_result(resultBVO mo);
}
