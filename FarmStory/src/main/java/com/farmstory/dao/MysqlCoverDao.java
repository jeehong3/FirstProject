package com.farmstory.dao;

import java.util.List;

import com.farmstory.mapper.CoverMapper;
import com.farmstory.vo.Cover;

public class MysqlCoverDao implements CoverDao{

	private CoverMapper CoverMapper;
	
	@Override
	public List<Cover> selectCoverList() {
		List<Cover> CoverList =CoverMapper.selectCoverList();
		return CoverList;
	}

	@Override
	public void insertCover(Cover cover) {
		
		CoverMapper.insertCover(cover);
	}

	@Override
	public List<Cover> selectCoverInfoByCovNo(int covNo) {
		List<Cover> CoverList =CoverMapper.selectCoverInfoByCovNo(covNo);
		return CoverList;
	}

	@Override
	public void updateCover(Cover cover) {
		CoverMapper.updateCover(cover);
		
	}

	@Override
	public void deleteCover(int covNo) {
		CoverMapper.deleteCover(covNo);
		
	}

	

}
