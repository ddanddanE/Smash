package com.smash.mapper;

import java.util.List;

import com.smash.VO.board.BoardVO;

public interface BoardMapper {
	public List<BoardVO> List_board_main(BoardVO vo);
	
	public List<BoardVO> select_board_sub(BoardVO vo);
	
	public List<BoardVO> board_insert(BoardVO vo);
}
