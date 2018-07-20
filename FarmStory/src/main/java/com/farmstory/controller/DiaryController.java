package com.farmstory.controller;	

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.farmstory.service.DiaryService;
import com.farmstory.vo.Diary;

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
	/*	
		//이미지 삽입
				ImageFile imageFile = null;
				List<MultipartFile> imgFiles = req.getFiles("touristImage");
				//MultipartFile imgFile = req.getFile("touristImage");

				ArrayList<ImageFile> files = new ArrayList<>();
				int imageIdx = 0;
				
				//for(int i=0; i<=imgFiles.size(); i++) {
				for (MultipartFile imgFile : imgFiles) {
					if (!imgFile.isEmpty() && imgFile.getOriginalFilename().length() != 0) {
						ImageFile file = new ImageFile();
						imageIdx = imageIdx + 1;
						String path = req.getServletContext().getRealPath("/resources/upload-image/tourist-info");
						String savedImageFileName = imgFile.getOriginalFilename();
						savedImageFileName = Util.getUniqueFileName(savedImageFileName);
						file.setSavedImageFileName(savedImageFileName);
						file.setImageIdx(imageIdx);
						try {
							imgFile.transferTo(new File(path, savedImageFileName));
							imageFile = new ImageFile();
							imageFile.setSavedImageFileName(savedImageFileName);
						} catch (IllegalStateException e) {
							e.printStackTrace();
						} catch (Exception e) {

							e.printStackTrace();
						}
						
						files.add(file);
					}
				}

				//tourist.setAttachments(files);
				
				
				//touristService.writeTourist(tourist);
*/		
		return "diary/diary_list";
	}
}
