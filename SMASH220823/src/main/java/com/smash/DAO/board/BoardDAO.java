package com.smash.DAO.board;

import java.util.List;

import com.smash.VO.board.BoardVO;



public interface BoardDAO {

	// �Խñ� �ۼ�
	public void write(BoardVO boardVO) throws Exception;
	
	// �Խù� ��� ��ȸ
	public List<BoardVO> list(SearchCriteria scri) throws Exception;

	// �Խù� �� ����
	public int listCount(SearchCriteria scri) throws Exception;
	
	// �Խù� ��ȸ
	public BoardVO read(int bno) throws Exception;
	
}
