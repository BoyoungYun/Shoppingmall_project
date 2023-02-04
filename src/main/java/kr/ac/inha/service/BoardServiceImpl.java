package kr.ac.inha.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.inha.dto.BoardDto;
import kr.ac.inha.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardMapper boardmapper;
	public List<BoardDto> boardlist() throws Exception
	{
		return boardmapper.boardlist();
	}
	public void updateboard(BoardDto boardDto) throws Exception
	{
		boardmapper.updateboard(boardDto);
	}
	public void inputboard(BoardDto boardDto) throws Exception
	{
		boardmapper.inputboard(boardDto);
	}
}
