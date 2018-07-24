package com.farmstory.dao;

import com.farmstory.mapper.PlantMapper;
import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public class MySqlPlantDao implements PlantDao  {

	private PlantMapper plantMapper;

	public void setPlantMapper(PlantMapper plantMapper) {
		this.plantMapper = plantMapper;
	}
	
	@Override
	public void insertPlantInfo(Plant plant) {
		
		plantMapper.insertPlantInfo(plant);
	}
	
	@Override
	public void insertPlantInfoImages(PlantImg attachment) {
		
		plantMapper.insertPlantInfoImages(attachment);
	}
	
}
