package com.farmstory.dao;

import com.farmstory.mapper.PlantMapper;

public class MySqlPlantDao implements PlantDao  {

	private PlantMapper plantMapper;

	public void setPlantMapper(PlantMapper plantMapper) {
		this.plantMapper = plantMapper;
	}
	
}
