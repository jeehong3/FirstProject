package com.farmstory.service;

import java.util.ArrayList;

import com.farmstory.vo.Plant;
import com.farmstory.vo.RegistPlant;

public interface RegistPlantService {

	void registPlant(RegistPlant registplant);

	ArrayList<Plant> showPlant();

}