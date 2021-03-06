package com.studioj.service.event;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.EventDAO;

@Service
public class EventContentViewImpl implements EventService{

	@Autowired
	EventDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int num = Integer.parseInt(request.getParameter("num"));
		dao.uphit(num);
		
		model.addAttribute("dto",dao.eContentView(num));
		model.addAttribute("relist",dao.replyList(num));
		return 0;
	}

	

	
}
