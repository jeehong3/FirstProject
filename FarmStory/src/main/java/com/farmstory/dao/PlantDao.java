package com.farmstory.dao;

import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public interface PlantDao {

	void insertPlantInfo(Plant plant);

	void insertPlantInfoImages(PlantImg attachment);

}