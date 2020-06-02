package com.studioj.util;

import java.awt.image.BufferedImage;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.studioj.dto.GalleryBoardDTO;
import com.studioj.dto.GalleryDTO;

@Component("fileUtils")
public class FileUtils {

private static final String filePath = "/Users/raptor/Desktop/dev/Studio_j/src/main/webapp/resources/image/fileUpDown/"; // 파일이 저장될 위치
	
	public List<Map<String, Object>> parseInsertFileInfo(GalleryBoardDTO dto, 
			MultipartHttpServletRequest mpRequest) throws Exception{
		
		/*
			Iterator은 데이터들의 집합체? 에서 컬렉션으로부터 정보를 얻어올 수 있는 인터페이스입니다.
			List나 배열은 순차적으로 데이터의 접근이 가능하지만, Map등의 클래스들은 순차적으로 접근할 수가 없습니다.
			Iterator을 이용하여 Map에 있는 데이터들을 while문을 이용하여 순차적으로 접근합니다.
		*/
		
		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int bno = dto.getBno();
		
		File file = new File(filePath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				
				
				storedFileName = getRandomString() + originalFileExtension;
			    int index = storedFileName.lastIndexOf(".");
			    String fileExt = storedFileName.substring(index + 1);
				

				
				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				
				
				listMap = new HashMap<String, Object>();
				listMap.put("BNO", bno);
				listMap.put("ORG_FILE_NAME", originalFileName);
				listMap.put("STORED_FILE_NAME", storedFileName);
				listMap.put("FILE_SIZE", multipartFile.getSize());
				list.add(listMap);
				
				
				//썸네일 만드는 메서드 
				makeThumbnail(file.getAbsolutePath(), storedFileName, fileExt);


			}
		}
		return list;
	}
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	//썸넬 만들어보자
	private void makeThumbnail(String filePathh, String fileName, String fileExt) {
		// 저장된 원본파일로부터 BufferedImage 객체를 생성합니다. 
		try {
			BufferedImage srcImg = ImageIO.read(new File(filePathh));
			//썸네일 크기 
			int dw=400, dh = 600;
			
			//원본 사이즈 
			int ow = srcImg.getWidth();
			int oh = srcImg.getHeight();
			
			// 원본 너비를 기준으로 하여 썸네일의 비율로 높이를 계산합니다. 
			int nw = ow; 
			int nh = (ow * dh) / dw;

			// 계산된 높이가 원본보다 높다면 crop이 안되므로 
			// 원본 높이를 기준으로 썸네일의 비율로 너비를 계산합니다. 
			if(nh > oh) { 
				nw = (oh * dw) / dh; 
				nh = oh; 
			}

			// 계산된 크기로 원본이미지를 가운데에서 crop 합니다. 
			BufferedImage cropImg = Scalr.crop(srcImg, (ow-nw)/2, (oh-nh)/2, nw, nh);

			//crop된 이미지로 썸네일 생성
			BufferedImage destImg = Scalr.resize(cropImg, dw, dh);
			
			// 썸네일을 저장합니다. 이미지 이름 앞에 "THUMB_" 를 붙여 표시했습니다. 
			String thumbName = filePath + "THUMB_" + fileName; 
			File thumbFile = new File(thumbName); 
			ImageIO.write(destImg, fileExt.toUpperCase(), thumbFile);

			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	
	
}
