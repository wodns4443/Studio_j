package com.studioj.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studioj.service.event.EventContentViewImpl;
import com.studioj.service.event.EventListImpl;
import com.studioj.service.event.EventService;

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
	
}
