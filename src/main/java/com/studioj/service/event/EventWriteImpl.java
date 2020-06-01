package com.studioj.service.event;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.EventDAO;
import com.studioj.dto.EventDTO;

@Service
public class EventWriteImpl implements EventService{

	@Autowired
	EventDAO dao;
	@Autowired
	EventDTO dto;
	@Override
	public int execute(Model model) {
		int maxNum = dao.getMaxNum();
		maxNum++;
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		dto.setNum(maxNum);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setIdgroup(maxNum);
		dao.write_save(dto);
		
		return 0;
	}

	
}
