package com.studioj.service.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.MemberDAO;
import com.studioj.dto.MemberDTO;
import com.studioj.service.member.MemberService;
@Service
public class MemberUserCheckImpl implements MemberService{
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
		String pw = request.getParameter("pw");
		int result=1;
		dto = dao.userCheck(id);
		if(dto!= null) {
			if(dto.getPw().equals(pw)) result=0;
		}
		if(result == 0) {
			HttpSession session = request.getSession();
			String chkId = request.getParameter("id");
			String admin = "StudioU";
			if(chkId.equals(admin)) {
				session.setAttribute("admin", request.getParameter("id"));
				session.setAttribute("userId", request.getParameter("id"));
			}else {
				session.setAttribute("userId", request.getParameter("id"));
			}
		}
		return result;
	}

}
