package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;
import com.studioj.dto.InquireDTO;

@Service
public class InquireReplyDelImpl implements InquireService {

	@Autowired
	InquireDAO dao;
	@Autowired
	InquireDTO dto;
	@Override
	public int execute(Model model) {
		Map<String, Object> map =model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		dto.setNum(Integer.parseInt(request.getParameter("num")));
		//dto.setStep(Integer.parseInt(request.getParameter("step")));
		
		dao.replyDel(dto);
		model.addAttribute("num",Integer.parseInt(request.getParameter("idgroup")));
		
		return 0;
	}

	
}
