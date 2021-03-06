package com.studioj.service.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.MemberDAO;
import com.studioj.dto.MemberDTO;
@Service
public class CheckPwServiceImpl implements MemberService{
	@Autowired
	private MemberDAO dao;
	@Autowired
	private MemberDTO dto;
	@Override
	public int execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String id = request.getParameter("id");
		String quiz = request.getParameter("quiz");
		String reply = request.getParameter("reply");
		int result = 1;
		dto = dao.checkPw(id);
		if(dto != null) {
			if(dto.getQuiz().equals(quiz)&& dto.getReply().equals(reply)) result=0;
		}
		if(result == 0) {
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());
			session.setAttribute("pw", dto.getPw());
		}
		return result;
	}

}
