package kr.ac.inha.service;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.inha.dto.MemberDto;
import kr.ac.inha.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper membermapper;
	@Override
	public void addMem(MemberDto member) throws Exception
	{
		membermapper.addMem(member);
	}
	@Override
	public MemberDto memLogin(MemberDto member) throws Exception
	{
		return membermapper.memLogin(member);
	}
	@Override
	public void memModify(MemberDto member) throws Exception
	{
		membermapper.memModify(member);
	}
	@Override
	public void memDelete(MemberDto member) throws Exception
	{
		membermapper.memDelete(member);
	}
}
