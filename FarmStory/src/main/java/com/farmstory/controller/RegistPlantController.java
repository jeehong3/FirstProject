package com.farmstory.controller;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmstory.service.RegistPlantService;
import com.farmstory.vo.Plant;
import com.farmstory.vo.RegistPlant;

@Controller
public class RegistPlantController {

	@Autowired
	@Qualifier(value="registPlantService")
	private RegistPlantService registPlantService;  
	
	@RequestMapping(value="/plant-regist.cation", method=GET)
		public String showPlant(Plant plant) {
			
			ArrayList<Plant> plants = registPlantService.showPlant();
		
		return null;
	}
	
	
	@RequestMapping(value="/plant-regist.action", method=POST)
		public String registPlant(RegistPlant registplant) {
		
			registPlantService.registPlant(registplant);
		
		return "plant/plant-regist";
	}
}
