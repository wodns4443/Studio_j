package com.studioj.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.MemberDAO;
import com.studioj.dto.MemberDTO;
@Service
public class RegisterServiceImpl implements MemberService{
	@Autowired
	private MemberDAO dao;
	@Autowired
	private MemberDTO dto;
	public RegisterServiceImpl() {
		System.out.println("RegisterServiceImpl 생성자");
	}
	@Override
	public int execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setName(request.getParameter("name"));
		dto.setNick(request.getParameter("nick"));
		dto.setMail(request.getParameter("mail"));
		dto.setTel(request.getParameter("tel"));
		dto.setQuiz(request.getParameter("quiz"));
		boolean chk = true;
		String mservice = request.getParameter("mservice");
		String sms = request.getParameter("sms");
		if(mservice != null) {
			dto.setMservice(chk);
		}else {
			chk = false;
			dto.setMservice(chk);
		}
		chk = true;
		if(sms != null) {
			dto.setSms(chk);
		}else {
			chk = false;
			dto.setSms(chk);
		}
		return dao.register(dto);
	}

}
