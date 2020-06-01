package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;
import com.studioj.dto.InquireDTO;

@Service
public class InquireModifySaveImpl implements InquireService{

	@Autowired
	InquireDAO dao;
	@Autowired
	InquireDTO dto;
	@Override
	public int execute(Model model) {
		Map<String, Object> map= model.asMap();
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
