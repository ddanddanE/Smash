package com.smash.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smash.VO.board.BoardVO;
import com.smash.VO.user.UserVO;
import com.smash.service.board.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {
	
	private final BoardService bservice;

	@PostMapping("/Board_Write")
	public String Board_Write1(BoardVO bvo, HttpSession session) throws Exception {
		
		UserVO vo = (UserVO) session.getAttribute("user");

		
		session.setAttribute("id", vo.getUser_id());
		session.setAttribute("adress", vo.getUser_sport_address());
		
		bservice.board_insert(bvo);
		
		return "redirect:/matchlist";
	}
	
	@RequestMapping("/boardlist")
	public String boardlist(Model model) throws Exception{
		
		List<BoardVO> blist = bservice.List_board_main();
		
		model.addAttribute("blist", blist);
		
		return "board/boardlist";
	}
}
