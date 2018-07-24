package com.farmstory.service;

import java.util.List;

import com.farmstory.dao.CoverDao;
import com.farmstory.vo.Cover;

public class CoverServiceImpl implements CoverService{
   
	private CoverDao coverDao;
	
	public void setCoverDao(CoverDao coverDao) {
		this.coverDao = coverDao;
	}

	//�Ұ� ���
	@Override
	public List<Cover> viewCoverList() {
		
		List<Cover> Covers = coverDao.selectCoverList();
		return Covers;
	}
	
	//�Ұ��ۼ�
	@Override
	public void writecover(Cover cover) {
		
		coverDao.insertCover(cover);
	}
	
	//�Ұ�����
	@Override
	public List<Cover> findCoverBycovNo(int covNo) {
		
		List<Cover> cover = coverDao.selectCoverInfoByCovNo(covNo);
		
		return cover;
	}
	
	//�Ұ�����
	@Override
	public void modifyCoverInfo(Cover cover) {
		
		coverDao.updateCover(cover);
		
	}
	
	//�Ұ�����
	@Override
	public void deleteCoverInfo(int covNo) {
		
		coverDao.deleteCover(covNo);
		
	}


	@Override
	public void deleteCoverInfo(String covNo) {
		// TODO Auto-generated method stub
		
	}
}
