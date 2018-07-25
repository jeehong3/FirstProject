package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;

public interface PlantService {

	void writePlantInfoWithImages(Plant plant);

	List<Plant> findPlantInfosWithThumnailImages();

	Plant findPlantInfoByPlaNo(int plaNo);

	List<PlantImg> findImagesPlantInfoByPlaNo(int plaNo);

}