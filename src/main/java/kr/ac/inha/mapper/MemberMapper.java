package kr.ac.inha.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.inha.dto.MemberDto;
@Mapper
public interface MemberMapper {
	public void addMem(MemberDto member) throws Exception;
	public MemberDto memLogin(MemberDto member) throws Exception;
	public void memModify(MemberDto member) throws Exception;
	public void memDelete(MemberDto member) throws Exception;
}
