package com.farmstory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.*;

@Controller
public class PlantController {

	
//	@Autowired
//	@Qualifier("plantService")
//	private PlantService plantService;
	
	@RequestMapping(value="/plant-list.action", method = GET)
	public String showListView(Model model) {
		
		
		return "plant/plant-list";
	}

	
	@RequestMapping(value="/plant-write.action", method = GET)
	public String showWriteView() {
		
		
		return "plant/plant-write";
	}
	
	
//	@RequestMapping(value="/plant-write.action", method = POST)
//	public String Write() {
//		
//		
//		return "redirect:plant-list";
//	}
	
	
	@RequestMapping(value="/plant-detail.action", method = GET)
	public String showDetailView(Model model) {
		
		
		return "plant/plant-detail";
	}
}
