package com.farmstory.mapper;

import java.util.HashMap;
import java.util.List;

import com.farmstory.vo.Account;
import com.farmstory.vo.Diary;
import com.farmstory.vo.DiaryImg;

public interface DiaryMapper {

	void insertDiary(Diary diary);

	void insertDiaryImage(DiaryImg attachment);

	List<Diary> findDiary(HashMap<String, Object> params);

	List<DiaryImg> findDiaryImg(int diaNo);

	List<DiaryImg> findDiaryAllImg(String memId);

	int selectCount();

	Diary findDiaryByDiaryNo(String diaNo);

	List<DiaryImg> findDiaryImgByDiaryNo(String diaNo);

	void deleteDiaryImg(String diaNo);
	
	void deleteDiary(String diaNo);

	void deleteDiaryImgByAjax(String diaNo);

	void deleteImgForUpdate(int diaNo);

	void updateDiary(Diary diary);

	List<Diary> findDiaryMonth(int diaNo);

}
