package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;

@Service
public class InquireDeleteImpl implements InquireService{

	@Autowired
	InquireDAO dao;
	@Override
	public int execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		dao.del(Integer.parseInt(request.getParameter("num")));
		
		
		return 0;
	}

	
}
