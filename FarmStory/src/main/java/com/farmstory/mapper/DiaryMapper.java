package com.farmstory.mapper;

import java.util.List;

import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryMapper {

	void insertDiary(Diary diary);

	void insertDiaryImage(DiaryImg attachment);

	List<Diary> findDiary(String memId);

	List<DiaryImg> findDiaryImg(String memId);


}
