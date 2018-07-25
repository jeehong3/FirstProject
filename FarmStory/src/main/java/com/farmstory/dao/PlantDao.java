package com.farmstory.dao;

import java.util.List;

import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public interface PlantDao {

	void insertPlantInfo(Plant plant);

	void insertPlantInfoImages(PlantImg attachment);

	List<Plant> selectPlantInfosWithThumnailImages();

	Plant selectPlantInfoByPlaNo(int plaNo);

	List<PlantImg> selectImagesPlantInfoByPlaNo(int plaNo);

}