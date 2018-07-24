package com.farmstory.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.farmstory.common.Util;
import com.farmstory.service.CoverService;
import com.farmstory.vo.Cover;

@Controller
public class CoverController {

	@Autowired
	@Qualifier("coverService")
	private CoverService coverService;
	
   //소개 목록
	@GetMapping(value= "/cover-list.action")
    public String showcoverlistview(Model model){
		
		List<Cover> CoverList = coverService.viewCoverList();
		
		model.addAllAttributes(CoverList);
		
		return "cover/cover-list";
		
	}

  //소개 쓰기
  @GetMapping(value="/cover_write.action")
  public String showcoverwrite() {
	  
	  return "cover/coverwrite";
	  
  }

  @PostMapping(value="/cover_write.action")
  public String coverwrite(
		  MultipartHttpServletRequest req,
		  Cover cover) {
	

		//form 태그의 <input type="file" name="cover_image" 의 파일을 읽어서 변수에 저장
		MultipartFile coverImage = req.getFile("cover_image");
		
		//파일을 저장할 디렉터리 경로
		String uploadPath = 
			req.getServletContext().getRealPath("/resources/upload-image/cover-info");
	
		//업로드한 파일의 원래 이름
		String fileName = coverImage.getOriginalFilename();
		
		//파일에 디렉터리 경로가 붙어있는 경우 디렉터리 경로 제거 (internet explorer 때문에)
		//C:\a\b\c.png -> c.png
		if (fileName.contains("\\")) {
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
		}
		
		//파일이름을 고유하게 만드는 작업
		fileName = Util.getUniqueFileName(fileName);
				
		try {
			//임시파일 또는 메모리에서 목적지 경로로 파일을 이동 (저장)
			coverImage.transferTo(new File(uploadPath, fileName));
			//원본이미지에 대해 작은 사이즈의 이미지를 만드는 작업
			Util.makeThumbnail(uploadPath, fileName, 150, 150);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		//실제 저장된 파일 이름을 VO에 저장
		cover.setCovImg(fileName);
	  
	  
	  coverService.writecover(cover);
	  
	  return "redirect:coverlist";
	  
  }
  
  //소개 보기
  
  @GetMapping(value="/cover_detail.action")
  public String showcoverdetail(
		  @RequestParam(defaultValue="-1") int covNo,
			Model model) {
	        
      List<Cover> cover = coverService.findCoverBycovNo(covNo);
      
      model.addAttribute("cover", cover);
	  
	  return "cover/coverdetail";
	  
  }

  
  //소개 수정
  
  @GetMapping(value="/cover_update.action")
  public String showcoverupdate(@RequestParam(value="covNo", defaultValue="-1") int covNo,
			Model model) {
		
		System.out.println(covNo);
		System.out.println();
		
		if (covNo == -1) {
			return "redirect:cover_list.action";		
		}
		
		System.out.println(covNo);
		
		List<Cover> cover = coverService.findCoverBycovNo(covNo);
		
		model.addAttribute("cover", cover);
	return "cover/coverupdate";
	  
  }
  
  @PostMapping(value="/coverupdate.action")
  public String coverupdate(
		  MultipartHttpServletRequest req,
		  Cover cover) {
	
		//form 태그의 <input type="file" name="cover_image" 의 파일을 읽어서 변수에 저장
		MultipartFile coverImage = req.getFile("cover_image");
		
		//파일을 저장할 디렉터리 경로
		String uploadPath = 
			req.getServletContext().getRealPath("/resources/upload-image/cover-info");
	
		//업로드한 파일의 원래 이름
		String fileName = coverImage.getOriginalFilename();
		
		//파일에 디렉터리 경로가 붙어있는 경우 디렉터리 경로 제거 (internet explorer 때문에)
		//C:\a\b\c.png -> c.png
		if (fileName.contains("\\")) {
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
		}
		
		//파일이름을 고유하게 만드는 작업
		fileName = Util.getUniqueFileName(fileName);
				
		try {
			//임시파일 또는 메모리에서 목적지 경로로 파일을 이동 (저장)
			coverImage.transferTo(new File(uploadPath, fileName));
			//원본이미지에 대해 작은 사이즈의 이미지를 만드는 작업
			Util.makeThumbnail(uploadPath, fileName, 150, 150);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		//실제 저장된 파일 이름을 VO에 저장
		cover.setCovImg(fileName);
	  
	coverService.modifyCoverInfo(cover);
	
	return "redirect:cover_detail.action?covNo="+ cover.getCovNo();
  }
  
  //소개 삭제
  
  @GetMapping(value="/coverdelete.action")
  public String showcoverdelete(
		  @RequestParam(value="covNo", defaultValue="-1") String covNo) {
		
		coverService.deleteCoverInfo(covNo);
	return "redirect:cover_list.action";
	  
  }
  

}
