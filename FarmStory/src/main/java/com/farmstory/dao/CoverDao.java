package com.farmstory.dao;

import java.util.List;

import com.farmstory.vo.Cover;

public interface CoverDao {

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
