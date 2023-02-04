package kr.ac.inha.service;

import java.util.List;

import kr.ac.inha.dto.AdminDto;

public interface AdminService {
	public List<AdminDto> goodslist() throws Exception;
	public void addThings(AdminDto adminDto) throws Exception;
	public void cart(AdminDto adminDto) throws Exception;
	public List<AdminDto> cartlist() throws Exception;
}
