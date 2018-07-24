package com.farmstory.service;

import com.farmstory.dao.PlantDao;

public class PlantServiceImpl implements PlantService {
	
	private PlantDao plantDao;

	public void setPlantDao(PlantDao plantDao) {
		this.plantDao = plantDao;
	}
	
}
