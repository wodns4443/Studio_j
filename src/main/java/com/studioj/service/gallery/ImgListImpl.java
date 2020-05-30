package com.studioj.service.gallery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.studioj.dao.GalleryDAO;

@Service
public class ImgListImpl implements GalleryService{

	@Autowired
	GalleryDAO dao;
	
	
	@Override
	public int execute(Model model) {
		
		model.addAttribute("imgList",dao.imgReadAll());
		
		return 0;
	}

	
}
