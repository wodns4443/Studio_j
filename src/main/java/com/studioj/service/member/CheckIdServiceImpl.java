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
public class CheckIdServiceImpl implements MemberService{
	@Autowired
	private MemberDAO dao;
	@Autowired
	private MemberDTO dto;
	@Override
	public int execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String tel = request.getParameter("tel");
		int result = 1;
		dto = dao.checkId(tel);
		if(dto != null) {
			if(dto.getTel().equals(tel)) result=0;
		}
		if(result == 0) {
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());
		}
		return result;
	}

}
