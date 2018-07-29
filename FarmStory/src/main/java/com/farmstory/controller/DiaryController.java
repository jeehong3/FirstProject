package com.farmstory.controller;	

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.farmstory.common.Util;
import com.farmstory.service.DiaryService;
import com.farmstory.ui.ThePager;
import com.farmstory.vo.Account;
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
	public String diary_write(MultipartHttpServletRequest req, Diary diary, Model model, String memId) {
		
		diary.setMemId(memId);
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
	
	@GetMapping(value = "/diary_list.action")
	public String diary_list(Model model, HttpSession session,
			/*@RequestParam(value = "memId") String memId,*/
			@RequestParam(value = "pageno", defaultValue = "1") int pageNo,
			String diaTitle) {
		
		String memId = ((Account)session.getAttribute("loginuser")).getMemId();
		
		int pageSize = 4; //한 페이지에 표시할 데이터 갯수
		//int from = pageNo * pageSize - pageSize + 1;
		//int to = pageSize;
		
		//mysql 사용시
		int from = pageNo * pageSize - pageSize;
		int to = from + pageSize;
		
		int pagerSize = 5; //번호로 표시할 페이지 목록
		String linkUrl = "diary_list.action";
		//////////////////////////////////////////////////////////////////////////////
		List<Diary> diary = diaryService.findDiary(from, to, memId, diaTitle);
		int dataCount = diaryService.getCount();
		
		ThePager pager = new ThePager(dataCount, pageNo, pageSize, pagerSize, linkUrl);
		
		List<DiaryImg> diaryAllImg = diaryService.findDiaryAllImg(memId);
	
		//SimpleDateFormat diaDate = new SimpleDateFormat("dd-MMM-yyyy", new Locale("en", "US"));
		
		model.addAttribute("diaries", diary);
		model.addAttribute("pager", pager);
		model.addAttribute("diaryAllImg", diaryAllImg);
		model.addAttribute("memId", memId);
		
		return "diary/diary_list";
	}
	
	@GetMapping(value = "/diary_detail.action")
	public String diary_detail(
			@RequestParam(value = "diaNo") String diaNo, Model model, HttpSession session) {
		
		String memId = ((Account)session.getAttribute("loginuser")).getMemId();
		Diary diary = diaryService.findDiaryByDiaryNo(diaNo);
		List<DiaryImg> diaryImg = diaryService.findDiaryImgByDiaryNo(diaNo);
		List<DiaryImg> diaryAllImg = diaryService.findDiaryAllImg(memId);
		model.addAttribute("diary", diary);
		model.addAttribute("diaryImg", diaryImg);
		model.addAttribute("diaryAllImg", diaryAllImg);
		
		return "diary/diary_detail";
	}
	
	@GetMapping(value = "/diary_delete.action")
	public String diary_delete(String diaNo) {
		diaryService.deleteDiary(diaNo);
		return "redirect:diary_list.action";
	}
	
	@GetMapping(value = "/diary_delete_image.action")
	@ResponseBody
	public String diary_delete_image(String diaNo) {
		diaryService.deleteDiaryImgByAjax(diaNo);
		return "success";
	}
	
	@GetMapping(value = "/diary_update.action")
	public String diary_update(String diaNo, Model model) {
		Diary diary = diaryService.findDiaryByDiaryNo(diaNo);
		List<DiaryImg> diaryImg = diaryService.findDiaryImgByDiaryNo(diaNo);
		model.addAttribute("diary", diary);
		model.addAttribute("diaryImg", diaryImg);
		return "diary/diary_update";
	}
	
	@PostMapping(value = "/diary_update.action")
	public String diary_update(MultipartHttpServletRequest req, Diary diary, Model model, int diaNo) {
		
		diary.setDiaNo(diaNo);
		diaryService.deleteImgForUpdate(diaNo);
		
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
				diaryService.updateDiary(diary);
				model.addAttribute("diary", diary);
			
				return "redirect:diary_detail.action?diaNo=" + diaNo;
	}
	
	/*@GetMapping(value = "/diaryMonthCheck.action")
	@ResponseBody
	public String diaryMonthCheck(String memId, Model model) {
		List<Diary> diaryMonth = diaryService.findDiaryMonth(memId);
		
		return "diaryMonth";
	}*/
	
}
