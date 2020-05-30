package com.studioj.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.MemberDAO;
import com.studioj.dto.MemberDTO;
@Service
public class SearchCheckImpl implements MemberService{
	@Autowired
	private MemberDAO dao;
	@Autowired
	private MemberDTO dto;
	@Override
	public int execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String quiz = request.getParameter("quiz");
		int result = 1;
		dto = dao.searchCheck(quiz);
		if(dto != null) {
			if(dto.getQuiz().equals(quiz)) result=0;
		}
		if(result == 0) {
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());
			session.setAttribute("pw", dto.getPw());
		}
		return result;
	}

}
