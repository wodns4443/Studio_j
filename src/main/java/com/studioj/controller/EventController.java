package com.studioj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studioj.service.event.EventContentViewImpl;
import com.studioj.service.event.EventDeleteImpl;
import com.studioj.service.event.EventListImpl;
import com.studioj.service.event.EventModifyImpl;
import com.studioj.service.event.EventModifySaveImpl;
import com.studioj.service.event.EventReplyDelImpl;
import com.studioj.service.event.EventReplyImpl;
import com.studioj.service.event.EventReplyViewImpl;
import com.studioj.service.event.EventService;
import com.studioj.service.event.EventWriteImpl;
import com.studioj.service.inquire.InquireReplyDelImpl;

@Controller
public class EventController {

	ApplicationContext ac = App.ac;
	private EventService es;
	
	@RequestMapping("event")
	public String event(Model model,HttpServletRequest request) {
		model.addAttribute("request",request);
		es = ac.getBean("eventListImpl",EventListImpl.class);
		es.execute(model);
		return "event/event_list";
	}
	
	@RequestMapping("eventContent")
	public String eventContetn(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		es = ac.getBean("eventContentViewImpl",EventContentViewImpl.class);
		es.execute(model);
		return "event/content_view";
	}
	@RequestMapping("eventModify")
	public String eventModify(Model model,HttpServletRequest request) {
		model.addAttribute("request",request);
		es = ac.getBean("eventModifyImpl",EventModifyImpl.class);
		es.execute(model);
				
		return "/event/content_modify";
	}
	@RequestMapping("eventModifySave")
	public String eventModifySave(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		es=ac.getBean("eventModifySaveImpl",EventModifySaveImpl.class);
		es.execute(model);
		
		return "redirect:eventContent";
	}
	@RequestMapping("eventDel")
	public String eventDel(Model model,HttpServletRequest request) {
		model.addAttribute("request",request);
		es=ac.getBean("eventDeleteImpl",EventDeleteImpl.class);
		es.execute(model);
		
		return "redirect:event";
	}
	
	@RequestMapping("event_write")
	public String event_write() {
		
		return "event/write_view";
	}
	@RequestMapping("event_write_save")
	public String event_write_save(Model model, HttpServletRequest request) {
		model.addAttribute("request",request);
		es= ac.getBean("eventWriteImpl",EventWriteImpl.class);
		es.execute(model);
		
		return "redirect:event";
	}
	@RequestMapping("eventReplyView")
	public String eventReplyView(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId")==null) {
			return "studioj/login";
		}
		
		model.addAttribute("request",request);
		
		es = ac.getBean("eventReplyViewImpl",EventReplyViewImpl.class);
		es.execute(model);
		return "event/reply_view";
	}
	@RequestMapping("eventReply")
	public String eventReply(Model model,HttpServletRequest request) {
		model.addAttribute("request",request);
		es = ac.getBean("eventReplyImpl",EventReplyImpl.class);
		es.execute(model);
		
		return "event/content_view";
	}
	@RequestMapping("eReplyDel")
	public String replyDel(Model model,HttpServletRequest request) {
		model.addAttribute("request",request);
		es = ac.getBean("eventReplyDelImpl",EventReplyDelImpl.class);
		es.execute(model);
		
		return "redirect:eventContent";
	}
	
	
	
	
	
}
