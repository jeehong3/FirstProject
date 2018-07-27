package com.farmstory.dao;

import java.util.List;

import com.farmstory.mapper.CoverMapper;
import com.farmstory.vo.Cover;

public class MysqlCoverDao implements CoverDao {
	
	private CoverMapper coverMapper;

	public void setCoverMapper(CoverMapper coverMapper) {
		this.coverMapper = coverMapper;
	}
    
	//�Ұ� ���
	@Override
	public List<Cover> selectCoverList() {
		List<Cover> Coverlist = coverMapper.selectCoverList();
		return Coverlist;
	}
	
	//�Ұ� ����
	@Override
	public void insertCover(Cover cover) {
		coverMapper.insertCover(cover);
		
	}
	
	//�Ұ� �Һ��� ����
	@Override
	public List<Cover> selectCoverInfoByCovNo() {
		List<Cover> Coverlist = coverMapper.selectCoverInfoByCovNo();
		return Coverlist;
	}

	//�Ұ� ������ ����
	@Override
	public Cover selectCovermInfoByCovNo(int covNo) {
		Cover Coverlist = coverMapper.selectCovermInfoByCovNo(covNo);
		return Coverlist;
	}
	
	//�Ұ� ����
	@Override
	public void updateCover(Cover cover) {
		coverMapper.updateCover(cover);
		
	}

	//�Ұ� ����
	@Override
	public void deleteCover(int covNo) {
		coverMapper.deleteCover(covNo);
		
	}


}
