package com.farmstory.service;

import com.farmstory.dao.MypageDao;
import com.farmstory.vo.Myplant;

public interface MypageService {

	void setMypageDao(MypageDao mypageDao);

	void bestPlant(Myplant myplant);

}