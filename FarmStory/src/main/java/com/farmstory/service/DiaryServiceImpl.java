package com.farmstory.service;

import java.util.List;

import com.farmstory.dao.DiaryDao;
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
}
