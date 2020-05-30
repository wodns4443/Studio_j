package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;
import com.studioj.dto.InquireDTO;

@Service
public class InquireReplyImpl implements InquireService{

	@Autowired
	InquireDAO dao;
	@Autowired
	InquireDTO dto;
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int maxNum = dao.getMaxNum();
		maxNum++;
		
		dto.setNum(maxNum);
		dto.setName(request.getParameter("name"));
		dto.setContent(request.getParameter("content"));
		dto.setIdgroup(Integer.parseInt(request.getParameter("idgroup")));
		dto.setStep(Integer.parseInt(request.getParameter("step")));
		dto.setIndent(Integer.parseInt(request.getParameter("indent")));
		
		
		dao.replyShap(dto);
		dao.reply(dto);
		int num = Integer.parseInt(request.getParameter("num"));
		dao.replyup(num);
		model.addAttribute("dto",dao.contentView(num));
		model.addAttribute("relist",dao.replyList(num));
		
		return 0;
	}

	
}
