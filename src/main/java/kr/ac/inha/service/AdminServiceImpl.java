package kr.ac.inha.service;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import kr.ac.inha.dto.AdminDto;
import kr.ac.inha.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminMapper adminmapper;
	public List<AdminDto> goodslist() throws Exception
	{	
		return adminmapper.goodslist();
	}
	public void addThings(AdminDto adminDto) throws Exception
	{
		adminmapper.addThings(adminDto);
	}
	public void cart(AdminDto adminDto) throws Exception
	{
		adminmapper.cart(adminDto);
	}
	public List<AdminDto> cartlist() throws Exception
	{
		return adminmapper.cartlist();
	}
}