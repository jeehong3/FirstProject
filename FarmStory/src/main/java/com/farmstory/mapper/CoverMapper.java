package com.farmstory.mapper;

import java.util.List;

import com.farmstory.vo.Cover;

public interface CoverMapper {
	
	//소개쓰기
	void insertCover(Cover Cover);
	
	//소개 목록보기
	List<Cover> selectCoverList();
	
	//소개 상세 보기
	List<Cover> selectCoverInfoByCovNo(int covNo);
	
	//소개 수정
	void updateCover(Cover Cover);
	
	//소개 삭제
	void deleteCover(int covNo);
	
}
