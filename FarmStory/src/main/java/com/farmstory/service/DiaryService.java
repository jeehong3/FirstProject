package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryService {

	void writeDiary(Diary diary);

	List<Diary> findDiary(String memId);

	List<DiaryImg> findDiaryAllImg(String memId);



}
