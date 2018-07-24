package com.farmstory.mapper;

import java.util.List;

import com.farmstory.vo.Cover;

public interface CoverMapper {
    
	//�Ұ� ���
	List<Cover> selectCoverList();
	
	//�Ұ� ����
	void insertCover(Cover cover);
	
	//�Ұ� ����
	List<Cover> selectCoverInfoByCovNo(int covNo);
	
	//�Ұ� ����
	void updateCover(Cover cover);
	
	//�Ұ� ����
	void deleteCover(int covNo);

}
