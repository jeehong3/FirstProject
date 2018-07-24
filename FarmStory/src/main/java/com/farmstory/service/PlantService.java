package com.farmstory.service;

import java.util.List;

import com.farmstory.vo.Plant;

public interface PlantService {

	void writePlantInfoWithImages(Plant plant);

	List<Plant> findPlantInfosWithThumnailImages();

}