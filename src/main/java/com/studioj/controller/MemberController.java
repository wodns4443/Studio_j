package com.studioj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.studioj.service.member.MemberService;
import com.studioj.service.member.MemberUserCheckImpl;

@Controller
public class MemberController {

	ApplicationContext ac = App.ac;
	
	private MemberService ms;
	
	@RequestMapping("login")
	public String login(Model model) {
		System.out.println("login 실행!!!");
		return "studioj/login";
	}
	@RequestMapping(value="user_check", method=RequestMethod.POST)
	public String user_check(HttpServletRequest request,Model model) {
		System.out.println("user_check 실행!!!");
		model.addAttribute("request",request);
		ms = ac.getBean("memberUserCheckImpl",MemberUserCheckImpl.class);
		int result = ms.execute(model);
		if(result == 0) {
			return "redirect:test";
		}
		return "redirect:login";
	}
	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:test";
	}
	
	
}
