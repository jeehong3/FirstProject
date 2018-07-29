package com.farmstory.dao;

import java.util.HashMap;
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
	public List<Diary> findDiary(int from, int to, String memId, String diaTitle) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to", to);
		params.put("memId", memId);
		params.put("diaTitle", diaTitle);
		//List<Diary> diary = diaryMapper.findDiary(from, to, memId);
		//return diary;
		
		return diaryMapper.findDiary(params);
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

	@Override
	public int selectCount() {
		int count = diaryMapper.selectCount();
		return count;
	}

	@Override
	public Diary findDiaryByDiaryNo(String diaNo) {
		Diary diary = diaryMapper.findDiaryByDiaryNo(diaNo);
		return diary;
	}

	@Override
	public List<DiaryImg> findDiaryImgByDiaryNo(String diaNo) {
		List<DiaryImg> diaryImg = diaryMapper.findDiaryImgByDiaryNo(diaNo);
		return diaryImg;
	}

	@Override
	public void deleteDiary(String diaNo) {
		diaryMapper.deleteDiaryImg(diaNo);
		diaryMapper.deleteDiary(diaNo);
	}

	@Override
	public void deleteDiaryImgByAjax(String diaNo) {
		diaryMapper.deleteDiaryImgByAjax(diaNo);
	}

	@Override
	public void deleteImgForUpdate(int diaNo) {
		diaryMapper.deleteImgForUpdate(diaNo);
	}

	@Override
	public void updateDiary(Diary diary) {
		diaryMapper.updateDiary(diary);
	}


}
