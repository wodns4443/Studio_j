package com.studioj.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.studioj.dto.GalleryBoardDTO;
import com.studioj.service.gallery.GalleryService;
import com.studioj.service.gallery.ImgListImpl;
import com.studioj.service.gallery.ImgWriteImpl;

@Controller
public class GalleryController {

	ApplicationContext ac = App.ac;
	private GalleryService gs;
	
	@RequestMapping("gallery")
	public String gallery(Model model) {
		gs=ac.getBean("imgListImpl",ImgListImpl.class);
		gs.execute(model);
		
		return "gallery/gallery_home";
	}
	
	@RequestMapping("imgWriteView")
	public String imgWriteView() {
		
		return "gallery/imgWriteView";
	}
	
	@RequestMapping("imgWrite")
	public String imgWrite(Model model, MultipartHttpServletRequest mpRequest, HttpServletRequest request) {
		model.addAttribute("mpRequest",mpRequest);
		model.addAttribute("request",request);
		gs = ac.getBean("imgWriteImpl",ImgWriteImpl.class);
		gs.execute(model);
		
		return "redirect:gallery";
	}
	
//	@RequestMapping("viewOriginImg")
//	public String vieweOriginImg(Model model, HttpServletRequest request) {
//		model.addAttribute("request",request);
//		
//		gs = ac.getBean("",)
//		
//		return "";
//	}
	
	
	
	
	
	
	
	
	
	
	
}
