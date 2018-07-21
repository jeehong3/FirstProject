package com.farmstory.dao;

import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryDao {

	void insertDiary(Diary diary);

	void insertDiaryImage(DiaryImg attachment);

}
