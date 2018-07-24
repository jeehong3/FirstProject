package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Cover;

public interface CoverService {
    
	//소개 목록
	List<Cover> viewCoverList();

	//소개 쓰기
	void writecover(Cover cover);

	//소개 보기
	List<Cover> findCoverBycovNo(int covNo);
    
	//소개 수정
	void modifyCoverInfo(Cover cover);
	
	//소개 삭제
	void deleteCoverInfo(String covNo);

	void deleteCoverInfo(int covNo);

}
