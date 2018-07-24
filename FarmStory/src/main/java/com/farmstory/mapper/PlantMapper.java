package com.farmstory.mapper;

import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public interface PlantMapper {

	void insertPlantInfo(Plant plant);
	
	void insertPlantInfoImages(PlantImg attachment);
}
