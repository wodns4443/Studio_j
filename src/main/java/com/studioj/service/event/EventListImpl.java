package com.studioj.service.event;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.EventDAO;
import com.studioj.dto.BoardPager;

@Service
public class EventListImpl implements EventService{

	@Autowired
	EventDAO dao;
	
	@Autowired
	BoardPager pager;
	
	@Override
	public int execute(Model model) {
		int page =1;
		int currentBlock = 1;
		Map<String, Object> map = model.asMap();
		HttpServletRequest request= (HttpServletRequest) map.get("request");
		if(request.getParameter("page")!=null)
		page = Integer.parseInt(request.getParameter("page"));

		if(request.getParameter("currentBlock")!=null) {
			currentBlock = Integer.parseInt(request.getParameter("currentBlock"));
			page = currentBlock*5-4;
		}
		
		pager.setCurrentblock(currentBlock);
		pager.setTotalcount(dao.getTotalPage());
		pager.setPagenum(page);
		
		pager.setCurrentblock(page);
		pager.setLastblock();
		pager.setStartPage();
		pager.setEndPage();
		pager.prevnext(page);
		
		
		
		
		//model.addAttribute("page",page);
		page=(page-1)*10;
		model.addAttribute("elist",dao.event_list(page));
		
//		int totPage = dao.getTotalPage();
//		model.addAttribute("totContent",totPage);
		
//		if(totPage%10==0) totPage= totPage/10;
//	    else totPage= totPage/10+1;
//		model.addAttribute("totPage",totPage);
		
		model.addAttribute("pager",pager);
		return 0;
	}

	
}
