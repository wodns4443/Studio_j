package com.studioj.service.event;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.EventDAO;
import com.studioj.dto.EventDTO;

@Service
public class EventReplyDelImpl implements EventService{

	@Autowired
	EventDAO dao;
	@Autowired
	EventDTO dto;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		dto.setNum(Integer.parseInt(request.getParameter("num")));
		
		dao.replyDel(dto);
		model.addAttribute("num",Integer.parseInt(request.getParameter("idgroup")));
		
		
		return 0;
	}

	
}
