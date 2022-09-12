package com.smash.DAO.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.smash.VO.board.BoardVO;
import com.smash.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;



@Repository
@RequiredArgsConstructor
public class BoardDAOImpl implements BoardDAO {

	private final BoardMapper BMapper;

	
	@Override
	public List<BoardVO> List_board_main(BoardVO vo) throws Exception {
		return BMapper.List_board_main(vo);
	}

	@Override
	public List<BoardVO> select_board_sub(BoardVO vo) throws Exception {
		return BMapper.select_board_sub(vo);
	}

	@Override
	public void board_insert(BoardVO vo) throws Exception {
		BMapper.board_insert(vo);
		
	}


	
}




















