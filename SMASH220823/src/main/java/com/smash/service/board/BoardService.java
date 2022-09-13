package com.smash.service.board;

import java.util.List;

import com.smash.VO.board.BoardVO;



public interface BoardService {

		//리스트 총 목록 보기
		public List<BoardVO> List_board_main(BoardVO vo) throws Exception;

		//자세히 보기
		public BoardVO Detail_Board(int Board_Num) throws Exception;
		
		//글 쓰기
		public void board_insert(BoardVO vo) throws Exception;
		
	
}
