package kr.ac.inha.mapper;
import kr.ac.inha.dto.AdminDto;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface AdminMapper {
	public List<AdminDto> goodslist() throws Exception;
	public void addThings(AdminDto adminDto) throws Exception;
	public void cart(AdminDto adminDto) throws Exception;
	public List<AdminDto> cartlist() throws Exception;
}
