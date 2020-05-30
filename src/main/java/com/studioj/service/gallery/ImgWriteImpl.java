package com.studioj.service.gallery;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.studioj.dao.GalleryDAO;
import com.studioj.dto.GalleryBoardDTO;
import com.studioj.dto.GalleryDTO;
import com.studioj.util.FileUtils;

@Service
public class ImgWriteImpl implements GalleryService{

	@Autowired
	FileUtils fileUtils;
	@Autowired
	GalleryDAO dao;
	@Autowired
	GalleryDTO dto;
	@Autowired
	GalleryBoardDTO bdto;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		MultipartHttpServletRequest mpRequest = (MultipartHttpServletRequest) map.get("mpRequest");
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		
		int maxBno = dao.getMaxBno();
		maxBno++;
		bdto.setBno(maxBno);
		bdto.setName(request.getParameter("name"));
		bdto.setTitle(request.getParameter("title"));
		bdto.setContent(request.getParameter("content"));
		
		dao.imgWrite(bdto);
		
		List<Map<String, Object>> list;
		try {
			list = fileUtils.parseInsertFileInfo(bdto, mpRequest);
			int size = list.size();
			for(int i=0; i<size; i++){ 
				dao.insertFile(list.get(i)); 
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		

		
		
		return 0;
	}

	
}
