package com.studioj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.studioj.service.member.CheckIdServiceImpl;
import com.studioj.service.member.MemberDelImpl;
import com.studioj.service.member.MemberInfoImpl;
import com.studioj.service.member.MemberService;
import com.studioj.service.member.MemberUpDataImpl;
import com.studioj.service.member.MemberUserCheckImpl;
import com.studioj.service.member.RegisterServiceImpl;
import com.studioj.service.member.CheckPwServiceImpl;

@Controller
public class MainController {
	ApplicationContext ac = App.ac;
	private MemberService ss;
	@RequestMapping("index")
	public String index() {
		System.out.println("index 실행!!!");
		return "studioj/index";
	}
	@RequestMapping("register")
	public String register(Model model) {
		System.out.println("register 실행!!!");
		return "studioj/register";
	}
	@RequestMapping("register_view")
	public String register_view(Model model) {
		System.out.println("register_view 실행!!!");
		return"studioj/register_view";
	}
	@RequestMapping("register_save")
	public String register_save(HttpServletRequest request,Model model) {
		System.out.println("register_save");
		model.addAttribute("request",request);
		ss = ac.getBean("registerServiceImpl",RegisterServiceImpl.class);
		int result = ss.execute(model);
		if(result == 0) {
			return "studioj/register_view";
		}
		return "redirect:index";
	}
	@RequestMapping("login")
	public String login(Model model) {
		System.out.println("login 실행!!!");
		return "studioj/login";
	}
	@RequestMapping(value="user_check", method=RequestMethod.POST)
	public String user_check(HttpServletRequest request,Model model) {
		System.out.println("user_check 실행!!!");
		model.addAttribute("request",request);
		ss = ac.getBean("memberUserCheckImpl",MemberUserCheckImpl.class);
		int result = ss.execute(model);
		if(result == 0) {
			return "studioj/index";
		}
		return "redirect:login";
	}
	@RequestMapping("logout")
	public String logout(HttpServletRequest request,Model model) {
		System.out.println("logout 실행!!");
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") != null) {
			session.invalidate();
		}
		return "redirect:index";
	}
	
	@RequestMapping("intro")
	public String intro(Model model) {
		System.out.println("intro 실행!!!");
		return "studioj/intro";
	}
	@RequestMapping("guide")
	public String guide(Model model) {
		System.out.println("guide 실행!!!");
		return "studioj/guide";
	}
	@RequestMapping("map")
	public String map(Model model) {
		System.out.println("map 실행!!!");
		return "studioj/map";
	}
	@RequestMapping("searchId")
	public String searchId(Model model) {
		System.out.println("searchId 실행!!!");
		return "studioj/searchId";
	}
	@RequestMapping("checkId")
	public String checkId(HttpServletRequest request,Model model) {
		System.out.println("checkId 실행!!!");
		model.addAttribute("request",request);
		ss = ac.getBean("checkIdServiceImpl",CheckIdServiceImpl.class);
		int result = ss.execute(model);
		if(result == 0) {
			return "studioj/checkId_view";
		}
		return "redirect:searchId";
	}
	@RequestMapping("searchPw")
	public String searchPw(Model model) {
		System.out.println("searchPw 실행!!!");
		return "studioj/searchPw";
	}
	@RequestMapping("checkPw")
	public String checkPw(HttpServletRequest request,Model model) {
		System.out.println("checkPw 실행!!!");
		model.addAttribute("request",request);
		ss = ac.getBean("checkPwServiceImpl",CheckPwServiceImpl.class);
		int result = ss.execute(model);
		if(result == 0) {
			return "studioj/search_view";
		}
		return "redirect:searchPw";
	}
	@RequestMapping("memberInfo")
	public String memberInfo(HttpServletRequest request,Model model) {
		System.out.println("memberInfo 실행!!");
		model.addAttribute("request",request);
		ss = ac.getBean("memberInfoImpl",MemberInfoImpl.class);
		ss.execute(model);
		return "studioj/memberInfo";
	}
	@RequestMapping("upData")
	public String upData(HttpServletRequest request,Model model) {
		System.out.println("updata 실행!!!");
		model.addAttribute("request",request);
		ss = ac.getBean("memberUpDataImpl",MemberUpDataImpl.class);
		int result = ss.execute(model);
		if(result == 1) return "redirect:index";
		else return "studioj/memberInfo";
	}
	@RequestMapping("delete")
	public String delete(HttpServletRequest request,Model model) {
		System.out.println("delete 실행!!!");
		model.addAttribute("request",request);
		ss = ac.getBean("memberDelImpl",MemberDelImpl.class);
		int result = ss.execute(model);
		if(result == 1) return "redirect:index";
		else return "studioj/memberInfo";
	}
	
}
