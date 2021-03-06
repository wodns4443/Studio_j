package com.studioj.service.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.MemberDAO;
import com.studioj.dto.MemberDTO;

@Service
public class MemberDelImpl implements MemberService{
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
		return dao.delete(id);
	}

}
