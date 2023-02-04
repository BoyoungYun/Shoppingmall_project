package kr.ac.inha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inha.dto.MemberDto;
import kr.ac.inha.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberservice;
	@RequestMapping("/member/login.do")
	public ModelAndView loginMember()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/login");
		return mv;
	}
	@RequestMapping("/member/login_ok.do")
	public ModelAndView processLoginMember(HttpServletRequest request, MemberDto member) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		try {
			HttpSession session = request.getSession();
			MemberDto lvo = memberservice.memLogin(member);
			if(lvo==null)
			{
				int result=1;
				session.setAttribute("result", result);
				mv.setViewName("/member/login");
			}
			else
			{
				session.setAttribute("member", lvo);
				mv.setViewName("/member/login_ok");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping(value="/member/join.do")
	public ModelAndView addMember()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/join");
		return mv;
	}
	@RequestMapping("/member/join_ok.do") 
	public ModelAndView processAddMember(MemberDto member) throws Exception
	{
		try {
			memberservice.addMem(member);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/join_ok");
		return mv;
	}
	@RequestMapping("/member/logout.do")
	public ModelAndView logoutMember(HttpServletRequest request) throws Exception
	{
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/logout");
		return mv;
	}
	@RequestMapping("/member/update.do")
	public ModelAndView updateMember()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/update");
		return mv;
	}
	@PostMapping("/member/update_ok.do")
	public ModelAndView processUpdateMember(MemberDto member) throws Exception
	{
		try
		{
			memberservice.memModify(member);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/update_ok");
		return mv;
	}
	@RequestMapping("/member/delete.do")
	public ModelAndView deleteMember(HttpServletRequest request) throws Exception
	{
		try
		{
			HttpSession session = request.getSession();
			MemberDto member = (MemberDto)session.getAttribute("member");
			memberservice.memDelete(member);
			session.invalidate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/delete");
		return mv;
	}
}
