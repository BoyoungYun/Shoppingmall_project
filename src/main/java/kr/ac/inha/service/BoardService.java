package kr.ac.inha.service;

import java.util.List;

import kr.ac.inha.dto.BoardDto;

public interface BoardService {
	public List<BoardDto> boardlist() throws Exception;
	public void updateboard(BoardDto boardDto) throws Exception;
	public void inputboard(BoardDto boardDto) throws Exception;
}
