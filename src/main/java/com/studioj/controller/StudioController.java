package com.studioj.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studioj.service.inquire.InquireContentViewImpl;
import com.studioj.service.inquire.InquireListImpl;
import com.studioj.service.inquire.InquirePwCheckImpl;
import com.studioj.service.inquire.InquireReplyImpl;
import com.studioj.service.inquire.InquireReplyViewImpl;
import com.studioj.service.inquire.InquireSearchImpl;
import com.studioj.service.inquire.InquireSecretCheck;
import com.studioj.service.inquire.InquireService;
import com.studioj.service.inquire.InquireWriteImpl;
import com.studioj.service.member.MemberInfoImpl;
import com.studioj.service.member.MemberService;

@Controller
public class StudioController {

	ApplicationContext ac = App.ac;
	private InquireService is;
	private MemberService ms;
	@RequestMapping("header")
	public String h() {
		return "default/header";
	}

	@RequestMapping("test")
	public String test() {
		return "default/test";
	}

	@RequestMapping("inquire")
	public String inquire(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		is = ac.getBean("inquireListImpl", InquireListImpl.class);
		is.execute(model);

		return "inquire/inquire_list";
	}

	@RequestMapping("write_view")
	public String write_view(Model model,HttpServletRequest request) {
		model.addAttribute("request",request);
		ms = ac.getBean("memberInfoImpl",MemberInfoImpl.class);
		ms.execute(model);
		return "inquire/write_view";
	}

	@RequestMapping("write_save")
	public String write_save(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		is = ac.getBean("inquireWriteImpl", InquireWriteImpl.class);
		is.execute(model);
		return "redirect:inquire";
	}
	@RequestMapping("content_pwcheck")
	public String content_pwcheck(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		
		is= ac.getBean("inquireSecretCheck",InquireSecretCheck.class);
		if(is.execute(model)==1) {
			return "inquire/content_pwcheck";
		}
		else return "redirect:contentView";
	}
	@RequestMapping("inquirepwcheck")
	public String inquirepwcheck(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		is = ac.getBean("inquirePwCheckImpl",InquirePwCheckImpl.class);
		if(is.execute(model)==1) return "redirect:contentView";
		
		return "redirect:inquire";
	}
	@RequestMapping("contentView")
	public String contentView(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		is = ac.getBean("inquireContentViewImpl", InquireContentViewImpl.class);
		is.execute(model);
		return "inquire/content_view";
	}

	@RequestMapping("replyView")
	public String replyView(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		is = ac.getBean("inquireReplyViewImpl", InquireReplyViewImpl.class);
		is.execute(model);
		return "inquire/reply_view";
	}

	@RequestMapping("reply")
	public String reply(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		is = ac.getBean("inquireReplyImpl", InquireReplyImpl.class);
		is.execute(model);
		return "inquire/content_view";
	}
	
	@RequestMapping("inquiresearch")
	public String inquiresearch(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		is = ac.getBean("inquireSearchImpl",InquireSearchImpl.class);
		is.execute(model);
		return "/inquire/search_list";
	}
	
	

}
