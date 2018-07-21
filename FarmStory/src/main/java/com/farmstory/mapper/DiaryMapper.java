package com.farmstory.mapper;

import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryMapper {

	void insertDiary(Diary diary);

	void insertDiaryImage(DiaryImg attachment);

}
