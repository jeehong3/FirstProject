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
	public List<Diary> findDiary(int from, int to, String memId, String diaTitle) {
		List<Diary> diary = diaryDao.findDiary(from, to, memId, diaTitle);
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

	@Override
	public int getCount() {
		int count = diaryDao.selectCount();
		return count;
	}

	@Override
	public Diary findDiaryByDiaryNo(String diaNo) {
		Diary diary = diaryDao.findDiaryByDiaryNo(diaNo);
		return diary;
	}

	@Override
	public List<DiaryImg> findDiaryImgByDiaryNo(String diaNo) {
		List<DiaryImg> diaryImg = diaryDao.findDiaryImgByDiaryNo(diaNo);
		return diaryImg;
	}

	@Override
	public void deleteDiary(String diaNo) {
		diaryDao.deleteDiary(diaNo);
	}

	@Override
	public void deleteDiaryImgByAjax(String diaNo) {
		diaryDao.deleteDiaryImgByAjax(diaNo);
	}

	@Override
	public void deleteImgForUpdate(int diaNo) {
		diaryDao.deleteImgForUpdate(diaNo);
	}

	@Override
	public void updateDiary(Diary diary) {
		diaryDao.updateDiary(diary);		
		List<DiaryImg> imgAttachments = diary.getAttachment();
		for (DiaryImg attachment : imgAttachments) {
			attachment.setDiaNo(diary.getDiaNo());
			diaryDao.insertDiaryImage(attachment);
		}		
	}

	@Override
	public List<Diary> findDiaryMonth(int diaNo) {
		List<Diary> diary = diaryDao.findDiaryMonth(diaNo);
		return diary;
	}

}
