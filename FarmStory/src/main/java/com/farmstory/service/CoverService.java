package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Cover;

public interface CoverService {
    
	//�Ұ� ���
	List<Cover> viewCoverList();

	//�Ұ� ����
	void writecover(Cover cover);

	//�Ұ� ����
	List<Cover> findCoverBycovNo(int covNo);
    
	//�Ұ� ����
	void modifyCoverInfo(Cover cover);
	
	//�Ұ� ����
	void deleteCoverInfo(String covNo);

	void deleteCoverInfo(int covNo);

}
