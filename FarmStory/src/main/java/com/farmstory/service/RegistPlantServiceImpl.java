package com.farmstory.service;

import java.util.ArrayList;

import com.farmstory.dao.RegistPlantDao;
import com.farmstory.vo.Plant;
import com.farmstory.vo.RegistPlant;

public class RegistPlantServiceImpl implements RegistPlantService {

	private RegistPlantDao registPlantDao;
	
	public void setRegistPlantDao(RegistPlantDao registPlantDao) {
		this.registPlantDao = registPlantDao;
	}
	
	@Override
	public void registPlant(RegistPlant registplant) {
		
		registPlantDao.insertRegistPlant(registplant);
	}

	@Override
	public ArrayList<Plant> showPlant() {
	
		return registPlantDao.showPlant();
	}
	

	
}
