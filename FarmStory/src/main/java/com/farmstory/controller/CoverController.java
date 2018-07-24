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
	
	   //�Ұ� ���
		@GetMapping(value= "/cover_list.action")
	    public String showcoverlistview(Model model){
			
			List<Cover> CoverList = coverService.viewCoverList();
			
			model.addAllAttributes(CoverList);
			
			return "cover/cover_list";
			
		}

	  //�Ұ� ����
	  @GetMapping(value="/cover_write.action")
	  public String showcoverwrite() {
		  
		  return "cover/coverwrite";
		  
	  }

	  @PostMapping(value="/cover_write.action")
	  public String coverwrite(
			  MultipartHttpServletRequest req,
			  Cover cover) {
		

			//form �±��� <input type="file" name="cover_image" �� ������ �о ������ ����
			MultipartFile coverImage = req.getFile("cover_image");
			
			//������ ������ ���͸� ���
			String uploadPath = 
				req.getServletContext().getRealPath("/resources/upload-image/cover-info");
		
			//���ε��� ������ ���� �̸�
			String fileName = coverImage.getOriginalFilename();
			
			//���Ͽ� ���͸� ��ΰ� �پ��ִ� ��� ���͸� ��� ���� (internet explorer ������)
			//C:\a\b\c.png -> c.png
			if (fileName.contains("\\")) {
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			}
			
			//�����̸��� �����ϰ� ����� �۾�
			fileName = Util.getUniqueFileName(fileName);
					
			try {
				//�ӽ����� �Ǵ� �޸𸮿��� ������ ��η� ������ �̵� (����)
				coverImage.transferTo(new File(uploadPath, fileName));
				//�����̹����� ���� ���� �������� �̹����� ����� �۾�
				Util.makeThumbnail(uploadPath, fileName, 150, 150);
			} catch (Exception e) {
				e.printStackTrace();
			}		
			
			//���� ����� ���� �̸��� VO�� ����
			cover.setCovImg(fileName);
		  
		  
		  coverService.writecover(cover);
		  
		  return "redirect:coverlist";
		  
	  }
	  
	  //�Ұ� ����
	  
	  @GetMapping(value="/cover_detail.action")
	  public String showcoverdetail(
			  @RequestParam(defaultValue="-1") int covNo,
				Model model) {
		        
	      List<Cover> cover = coverService.findCoverBycovNo(covNo);
	      
	      model.addAttribute("cover", cover);
		  
		  return "cover/coverdetail";
		  
	  }

	  
	  //�Ұ� ����
	  
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
		
			//form �±��� <input type="file" name="cover_image" �� ������ �о ������ ����
			MultipartFile coverImage = req.getFile("cover_image");
			
			//������ ������ ���͸� ���
			String uploadPath = 
				req.getServletContext().getRealPath("/resources/upload-image/cover-info");
		
			//���ε��� ������ ���� �̸�
			String fileName = coverImage.getOriginalFilename();
			
			//���Ͽ� ���͸� ��ΰ� �پ��ִ� ��� ���͸� ��� ���� (internet explorer ������)
			//C:\a\b\c.png -> c.png
			if (fileName.contains("\\")) {
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			}
			
			//�����̸��� �����ϰ� ����� �۾�
			fileName = Util.getUniqueFileName(fileName);
					
			try {
				//�ӽ����� �Ǵ� �޸𸮿��� ������ ��η� ������ �̵� (����)
				coverImage.transferTo(new File(uploadPath, fileName));
				//�����̹����� ���� ���� �������� �̹����� ����� �۾�
				Util.makeThumbnail(uploadPath, fileName, 150, 150);
			} catch (Exception e) {
				e.printStackTrace();
			}		
			
			//���� ����� ���� �̸��� VO�� ����
			cover.setCovImg(fileName);
		  
		coverService.modifyCoverInfo(cover);
		
		return "redirect:cover_detail.action?covNo="+ cover.getCovNo();
	  }
	  
	  //�Ұ� ����
	  
	  @GetMapping(value="/coverdelete.action")
	  public String showcoverdelete(
			  @RequestParam(value="covNo", defaultValue="-1") String covNo) {
			
			coverService.deleteCoverInfo(covNo);
		return "redirect:cover_list.action";
		  
	  }
}
