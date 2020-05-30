package com.studioj.service.inquire;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.InquireDAO;
import com.studioj.dto.InquireDTO;

@Service
public class InquireWriteImpl implements InquireService{

	@Autowired
	InquireDAO dao;
	@Autowired
	InquireDTO dto;
	@Override
	public int execute(Model model) {
		int maxNum = dao.getMaxNum();
		maxNum++;
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int secret=0;
		if(request.getParameter("secret")!=null) {
			secret = Integer.parseInt(request.getParameter("secret"));
		}
		String title = request.getParameter("title");
		if (secret==1) {
			title = title+" (비밀글입니다.)";
		}
		
		dto.setNum(maxNum);
		dto.setName(request.getParameter("name"));
		dto.setPw(request.getParameter("pw"));
		dto.setEmail(request.getParameter("email"));
		dto.setTel(request.getParameter("tel"));
		dto.setTitle(title);
		dto.setContent(request.getParameter("content"));
		dto.setIdgroup(maxNum);
		dto.setSecret(secret);
		dao.write_save(dto);
		
		
		return 0;
	}
	
	
}
