package kr.ac.inha.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inha.dto.BoardDto;
import kr.ac.inha.service.BoardService;
@Controller
public class BoardController {
	@Autowired
	private BoardService boardservice;
	@RequestMapping(value="/board/board.do")
	public ModelAndView board(Model model) throws Exception
	{
		List<BoardDto> board = boardservice.boardlist();
		model.addAttribute("board", board);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/board");
		return mv;
	}
	@RequestMapping(value="/board/board_detail.do")
	public ModelAndView board_detail(Model model) throws Exception
	{
		List<BoardDto> board = boardservice.boardlist();
		model.addAttribute("board", board);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/board_detail");
		return mv;
	}
	@RequestMapping(value="/board/board_input.do")
	public ModelAndView board_input() throws Exception
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/board_input");
		return mv;
	}
	@RequestMapping(value="/board/processBoardInput.do")
	public ModelAndView processBoardInput(BoardDto boarddto) throws Exception
	{
		boardservice.inputboard(boarddto);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/processBoardInput");
		return mv;
	}
}
