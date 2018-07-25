package com.farmstory.mapper;

import java.util.List;

import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public interface PlantMapper {

	void insertPlantInfo(Plant plant);
	
	void insertPlantInfoImages(PlantImg attachment);
	
	List<Plant> selectPlantInfosWithThumnailImages();
	
	Plant selectPlantInfoByPlaNo(int plaNo);
	
	List<PlantImg> selectImagesPlantInfoByPlaNo(int plaNo);
}
