package com.farmstory.dao;

import com.farmstory.mapper.MypageMapper;
import com.farmstory.vo.Myplant;

public interface MypageDao {

	void selectPlant(Myplant myplant);

	void setMypageMapper(MypageMapper mypageMapper);

}