package kr.ac.inha.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inha.dto.AdminDto;
import kr.ac.inha.service.AdminService;
@Controller

public class AdminController {
	@Autowired
	private AdminService adminservice;
	
	@RequestMapping("/welcome.do")
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("welcome");
		return mv;
	}
	@RequestMapping(value="/hot.do")
	public ModelAndView hot(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hot");
		return mv;
	}
	@RequestMapping(value="/outer.do")
	public ModelAndView outer()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("outer");
		return mv;
	}
	@RequestMapping(value="/top.do")
	public ModelAndView top()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("top");
		return mv;
	}
	@RequestMapping(value="/bottom.do")
	public ModelAndView bottom()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bottom");
		return mv;
	}
	@RequestMapping(value="/acc.do")
	public ModelAndView acc()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("acc");
		return mv;
	}
	@RequestMapping(value="/cart.do")
	public ModelAndView cart(Model model, AdminDto admindto) throws Exception
	{
		List<AdminDto> cart = adminservice.cartlist();
		model.addAttribute("cart",cart);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart");
		return mv;
	}
	@RequestMapping(value="/detail.do")
	public ModelAndView detail(Model model) throws Exception
	{
		List<AdminDto> list = adminservice.goodslist();
		model.addAttribute("list",list);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("detail");
		return mv;
	}
	@RequestMapping(value="/processCart.do")
	public ModelAndView processCart(Model model, AdminDto admindto) throws Exception
	{
		adminservice.addThings(admindto);
		adminservice.cart(admindto);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("processCart");
		return mv;
	}
	
}
