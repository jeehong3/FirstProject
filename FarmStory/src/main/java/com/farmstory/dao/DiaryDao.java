package com.farmstory.dao;

import java.util.List;

import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryDao {

	void insertDiary(Diary diary);

	void insertDiaryImage(DiaryImg attachment);

	List<Diary> findDiary(int from, int to, String memId, String diaTitle);

	List<DiaryImg> findDiaryImg(int diaNo);

	List<DiaryImg> findDiaryAllImg(String memId);

	int selectCount();

	Diary findDiaryByDiaryNo(String diaNo);

	List<DiaryImg> findDiaryImgByDiaryNo(String diaNo);

	void deleteDiary(String diaNo);

	void deleteDiaryImgByAjax(String diaNo);

	void deleteImgForUpdate(int diaNo);

	void updateDiary(Diary diary);

	List<Diary> findDiaryMonth(int diaNo);


}
