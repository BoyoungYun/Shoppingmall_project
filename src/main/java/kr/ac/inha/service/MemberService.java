package kr.ac.inha.service;
import kr.ac.inha.dto.MemberDto;

public interface MemberService {
	public void addMem(MemberDto member) throws Exception;
	public MemberDto memLogin(MemberDto member) throws Exception;
	public void memModify(MemberDto member) throws Exception;
	public void memDelete(MemberDto member) throws Exception;
}
