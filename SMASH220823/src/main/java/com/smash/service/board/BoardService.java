package com.smash.service.board;

import java.util.List;

import com.smash.VO.board.BoardVO;



public interface BoardService {

		// 게시글 작성
		public void write(BoardVO boardVO) throws Exception;

		// 게시물 목록 조회
		public List<BoardVO> list(SearchCriteria scri) throws Exception;
		
		// 게시물 총 갯수
		public int listCount(SearchCriteria scri) throws Exception;
		
		// 게시물 조회
		public BoardVO read(int Board_Num) throws Exception;
		
	
}
