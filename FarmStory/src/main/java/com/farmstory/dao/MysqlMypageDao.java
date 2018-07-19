package com.farmstory.dao;

import com.farmstory.mapper.MypageMapper;
import com.farmstory.vo.Myplant;

public class MysqlMypageDao implements MypageDao {

	private MypageMapper mypageMapper;

	public void setMypageMapper(MypageMapper mypageMapper) {
		this.mypageMapper = mypageMapper;
	}

	@Override
	public void selectPlant(Myplant myplant) {
		
		mypageMapper.selectPlant(myplant);
		
	}
	
}
