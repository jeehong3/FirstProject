package com.farmstory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PlantController {

//	@Autowired
//	@Qualifier("plantService")
//	private PlantService plantService;
	
	@GetMapping(value = "/plant_list.action")
	public String showPlantList(Model model) {
		
		
		return "plant/plant-list";
	}

	
	@GetMapping(value = "/plant_write.action")
	public String showWrite() {
		
		
		return "plant/plant-write";
	}
	
	
	@GetMapping(value = "/plant_detail.action")
	public String showPlantDetail(Model model) {
		
		
		return "plant/plant-detail";
	}
}
