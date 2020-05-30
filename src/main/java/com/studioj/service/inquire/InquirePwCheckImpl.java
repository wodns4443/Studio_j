package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;
import com.studioj.dto.InquireDTO;

@Service
public class InquirePwCheckImpl implements InquireService{

	@Autowired
	InquireDAO dao;
	@Autowired
	InquireDTO dto;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		dto = dao.contentView(Integer.parseInt(request.getParameter("num")));
		String pw = request.getParameter("pw");
		
		
		model.addAttribute("num",request.getParameter("num"));
		if(pw.equals(dto.getPw()))
			return 1;
		else return 0;
	}

	
}
