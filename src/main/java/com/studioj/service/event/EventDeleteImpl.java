package com.studioj.service.event;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.EventDAO;

@Service
public class EventDeleteImpl implements EventService{
	
	@Autowired
	EventDAO dao;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		dao.del(Integer.parseInt(request.getParameter("num")));
		return 0;
	}

	
}
