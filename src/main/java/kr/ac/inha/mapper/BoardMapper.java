package kr.ac.inha.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.inha.dto.BoardDto;
@Mapper
public interface BoardMapper {
	public List<BoardDto> boardlist() throws Exception;
	public void updateboard(BoardDto boardDto) throws Exception;
	public void inputboard(BoardDto boardDto) throws Exception;
}
