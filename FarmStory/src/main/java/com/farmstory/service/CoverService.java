package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Cover;


public interface CoverService {
	
	//소개 목록
	List<Cover> viewCoverList();
	
	//소개쓰기
	void writecover(Cover cover);
	
	//소개보기
	List<Cover> findCoverBycovNo(int covNo);
	
	//소개수정
	void modifyCoverInfo(Cover cover);
	
	//소개삭제
	void deleteCoverInfo(String covNo);

	void deleteCoverInfo(int covNo);

}
