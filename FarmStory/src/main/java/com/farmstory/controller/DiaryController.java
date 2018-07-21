package com.farmstory.controller;	

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.farmstory.common.Util;
import com.farmstory.service.DiaryService;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

@Controller
public class DiaryController {
	
	@Autowired
	@Qualifier(value = "diaryService")
	private DiaryService diaryService;
	
	@GetMapping(value = "/diary_write.action")
	public String diary_show() {
		return "diary/diary_write";
	}
	
	@PostMapping(value = "/diary_write.action")
	public String diary_write(MultipartHttpServletRequest req, Diary diary) {
	
		//이미지 삽입
				DiaryImg imageFile = null;
				List<MultipartFile> imgFiles = req.getFiles("diiImage1");

				ArrayList<DiaryImg> files = new ArrayList<>();

				for (MultipartFile imgFile : imgFiles) {
					if (!imgFile.isEmpty() && imgFile.getOriginalFilename().length() != 0) {
						DiaryImg file = new DiaryImg();
						String path = req.getServletContext().getRealPath("/resources/upload-image/diary-info");
						String savedImageFileName = imgFile.getOriginalFilename();
						savedImageFileName = Util.getUniqueFileName(savedImageFileName);
						file.setDiiImg(savedImageFileName);
						
						try {
							imgFile.transferTo(new File(path, savedImageFileName));
							imageFile = new DiaryImg();
							imageFile.setDiiImg(savedImageFileName);
						} catch (IllegalStateException e) {
							e.printStackTrace();
						} catch (Exception e) {

							e.printStackTrace();
						}
						
						files.add(file);
					}
				}
				diary.setAttachment(files);
				diaryService.writeDiary(diary);

				return "redirect:/home.action";
	}
}
