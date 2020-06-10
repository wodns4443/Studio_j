package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;
import com.studioj.dto.InquireDTO;

@Service
public class InquireSearchImpl implements InquireService{

	@Autowired
	InquireDAO dao;
	@Autowired
	InquireDTO dto;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
	
		
		
		
		
		
		
		
		String searchType =request.getParameter("searchType");
		String value = "%"+request.getParameter("searchValue")+"%";
		if(searchType.equals("title")) {
			model.addAttribute("slist",dao.searchTitle(value));
		}
		else if (searchType.equals("content")) {
			model.addAttribute("slist",dao.searchContent(value));
		}
		else if (searchType.equals("name")) {
			model.addAttribute("slist",dao.searchName(value));
		}
		
		
		return 0;
	}

	
}
