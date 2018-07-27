package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryService {

	void writeDiary(Diary diary);

	List<Diary> findDiary(int from, int to, String memId, String diaTitle);

	List<DiaryImg> findDiaryAllImg(String memId);

	int getCount();

	Diary findDiaryByDiaryNo(String diaNo);

	List<DiaryImg> findDiaryImgByDiaryNo(String diaNo);

	void deleteDiary(String diaNo);

	void deleteDiaryImgByAjax(String diaNo);

	void deleteImgForUpdate(int diaNo);

	void updateDiary(Diary diary);

	List<Diary> findDiaryMonth(int diaNo);


}
