package com.farmstory.dao;

import java.util.List;

import com.farmstory.mapper.DiaryMapper;
import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public class MySqlDiaryDao implements DiaryDao{
	
	private DiaryMapper diaryMapper;

	public void setDiaryMapper(DiaryMapper diaryMapper) {
		this.diaryMapper = diaryMapper;
	}

	@Override
	public void insertDiary(Diary diary) {
		diaryMapper.insertDiary(diary);
	}

	@Override
	public void insertDiaryImage(DiaryImg attachment) {
		diaryMapper.insertDiaryImage(attachment);
	}

	@Override
	public List<Diary> findDiary(String memId) {
		List<Diary> diary = diaryMapper.findDiary(memId);
		return diary;
	}

	@Override
	public List<DiaryImg> findDiaryImg(int diaNo) {
		List<DiaryImg> diaryImg = diaryMapper.findDiaryImg(diaNo);
		return diaryImg;
	}

	@Override
	public List<DiaryImg> findDiaryAllImg(String memId) {
		List<DiaryImg> diaryAllImg = diaryMapper.findDiaryAllImg(memId);
		return diaryAllImg;
	}


}
