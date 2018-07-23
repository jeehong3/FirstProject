package com.farmstory.service;

import java.util.List;

import com.farmstory.dao.PlantDao;
import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public class PlantServiceImpl implements PlantService {
	
	private PlantDao plantDao;

	public void setPlantDao(PlantDao plantDao) {
		this.plantDao = plantDao;
	}
	
	@Override
	public void writePlantInfoWithImages(Plant plant) {
		
		plantDao.insertPlantInfo(plant);
		
		List<PlantImg> imgAttachments = plant.getAttachments();
		for (PlantImg attachment : imgAttachments) {
			attachment.setPlaNo(plant.getPlaNo());
			plantDao.insertPlantInfoImages(attachment);
		}
	}
	
}
