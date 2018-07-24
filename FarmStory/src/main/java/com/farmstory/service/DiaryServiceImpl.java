package com.farmstory.service;

import java.util.List;

import com.farmstory.dao.DiaryDao;
import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public class DiaryServiceImpl implements DiaryService{
	
	private DiaryDao diaryDao;

	public void setDiaryDao(DiaryDao diaryDao) {
		this.diaryDao = diaryDao;
	}

	@Override
	public void writeDiary(Diary diary) {
		
		diaryDao.insertDiary(diary);		
		List<DiaryImg> imgAttachments = diary.getAttachment();
		for (DiaryImg attachment : imgAttachments) {
			attachment.setDiaNo(diary.getDiaNo());
			diaryDao.insertDiaryImage(attachment);
		}
	}
	
	@Override
	public List<Diary> findDiary(String memId) {
		List<Diary> diary = diaryDao.findDiary(memId);
		for (Diary d : diary) {
			List<DiaryImg> attachments = diaryDao.findDiaryImg(d.getDiaNo());
			d.setAttachment(attachments);
		}
		return diary;
	}

	@Override
	public List<DiaryImg> findDiaryAllImg(String memId) {
		
		List<DiaryImg> diaryAllImg = diaryDao.findDiaryAllImg(memId);
		return diaryAllImg;
	}
}
