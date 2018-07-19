package com.farmstory.service;

import com.farmstory.dao.MypageDao;
import com.farmstory.vo.Myplant;

public class MypageServiceImpl implements MypageService {

	private MypageDao mypageDao;
	
	@Override
	public void setMypageDao(MypageDao mypageDao) {
		this.mypageDao = mypageDao;
	}
	
	@Override
	public void bestPlant(Myplant myplant) {
		
		mypageDao.selectPlant(myplant);
	}
}
