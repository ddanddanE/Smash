package com.smash.mapper;

import java.util.List;

import com.smash.VO.board.BoardVO;

public interface BoardMapper {
	public List<BoardVO> List_board_main();
	
	public BoardVO Detail_Board(int Board_Num);
	
	public List<BoardVO> board_insert(BoardVO vo);
}
