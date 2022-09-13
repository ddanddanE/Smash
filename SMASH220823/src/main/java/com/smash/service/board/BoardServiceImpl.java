package com.smash.service.board;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.smash.DAO.board.BoardDAO;
import com.smash.VO.board.BoardVO;

import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

	private final BoardDAO BDao;

	@Override
	public List<BoardVO> List_board_main(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return BDao.List_board_main(vo);
	}

	@Override
	public BoardVO Detail_Board(int Board_Num) throws Exception {
		// TODO Auto-generated method stub
		return BDao.Detail_Board(Board_Num);
	}

	@Override
	public void board_insert(BoardVO vo) throws Exception {
		BDao.board_insert(vo);
		
	}
	
	


}















