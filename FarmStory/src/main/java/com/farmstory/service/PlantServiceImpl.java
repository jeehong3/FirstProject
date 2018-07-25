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
		
		// 등록하는 이미지들을 DB에 순차적으로 저장한다.  
		List<PlantImg> imgAttachments = plant.getAttachments();
		for (PlantImg attachment : imgAttachments) {
			attachment.setPlaNo(plant.getPlaNo());
			plantDao.insertPlantInfoImages(attachment);
		}
	}
	
	@Override
	public List<Plant> findPlantInfosWithThumnailImages(){
		
		return plantDao.selectPlantInfosWithThumnailImages();
	}
	
	@Override
	public Plant findPlantInfoByPlaNo(int plaNo) {
		
		return plantDao.selectPlantInfoByPlaNo(plaNo);
	}
	
	@Override
	public List<PlantImg> findImagesPlantInfoByPlaNo(int plaNo) {
		
		return plantDao.selectImagesPlantInfoByPlaNo(plaNo);
	}
	
}
