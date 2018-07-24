package com.farmstory.dao;

import java.util.ArrayList;

import com.farmstory.mapper.RegistPlantMapper;
import com.farmstory.vo.Plant;
import com.farmstory.vo.RegistPlant;

public class MySqlRegistPlantDao implements RegistPlantDao {
	
	private RegistPlantMapper registPlantMapper;
	
	
	@Override
	public void setRegistPlantMapper(RegistPlantMapper registPlantMapper) {
		this.registPlantMapper = registPlantMapper;
	}
	
	
	@Override
	public void insertRegistPlant(RegistPlant registPlant) {
		
		registPlantMapper.insertRegistPlant(registPlant);
	}


	@Override
	public ArrayList<Plant> showPlant() {
		
		
		return registPlantMapper.selectShowPlant();
	}
	
	
}
