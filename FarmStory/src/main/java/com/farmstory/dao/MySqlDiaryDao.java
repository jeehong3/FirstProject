package com.farmstory.dao;

import com.farmstory.mapper.DiaryMapper;
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

}
