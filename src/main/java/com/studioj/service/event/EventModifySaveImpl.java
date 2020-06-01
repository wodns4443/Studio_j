package com.studioj.service.event;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.EventDAO;
import com.studioj.dto.EventDTO;

@Service
public class EventModifySaveImpl implements EventService{
	@Autowired
	EventDAO dao;
	@Autowired
	EventDTO dto;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int num = Integer.parseInt(request.getParameter("num"));
		dto.setNum(num);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		
		dao.modify(dto);
		model.addAttribute("num",num);
		return 0;
	}

	
}
