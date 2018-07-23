package com.farmstory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farmstory.service.CoverService;
import com.farmstory.vo.Cover;

public class CoverController {

	@Autowired
	@Qualifier("coverService")
	private CoverService coverService;
	
   //소개 목록
	@GetMapping(value= "/cover_list.action")
    public String showcoverlistview(Model model){
		
		List<Cover> CoverList = coverService.viewCoverList();
		
		model.addAllAttributes(CoverList);
		
		return "cover/coverlist";
		
	}

  //소개 쓰기
  @GetMapping(value="/cover_write.action")
  public String showcoverwrite() {
	  
	  return "cover/coverwrite";
	  
  }

  @PostMapping(value="/cover_write.action")
  public String coverwrite(Cover cover) {
	
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
  
  @GetMapping(value="/cover_delete.action")
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
  public String coverupdate(Cover cover) {
	  
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
