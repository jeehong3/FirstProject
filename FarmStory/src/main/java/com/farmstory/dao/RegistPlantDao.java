package com.farmstory.dao;

import com.farmstory.mapper.RegistPlantMapper;
import com.farmstory.vo.RegistPlant;

public interface RegistPlantDao {

	void setRegistPlantMapper(RegistPlantMapper registPlantMapper);

	void insertRegistPlant(RegistPlant registPlant);

}