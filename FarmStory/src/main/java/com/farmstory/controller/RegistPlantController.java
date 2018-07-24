package com.farmstory.controller;

import static org.springframework.web.bind.annotation.RequestMethod.*; 

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmstory.service.RegistPlantService;
import com.farmstory.vo.Account;
import com.farmstory.vo.Plant;
import com.farmstory.vo.RegistPlant;

@Controller
public class RegistPlantController {

	@Autowired
	@Qualifier(value="registPlantService")
	private RegistPlantService registPlantService;  
	
	@RequestMapping(value="/plant_regist.action", method=GET)
		public String showPlant(Plant plant, Model model, HttpSession session) {
			
			//db에서 plant테이블 정보를 가져오는 구문
			ArrayList<Plant> plants = registPlantService.showPlant();
			//jsp로 보내주는 model
			model.addAttribute("plants", plants);
			
		return "plant/plant-regist";
	}
	
	
	@RequestMapping(value="/plant_regist.action", method=POST)
		public String registPlant(RegistPlant registplant,
				HttpSession session
				) {
			Account account = (Account) session.getAttribute("loginuser");
			registplant.setMemId(account.getMemId());
			
			System.out.println(registplant.getMemId());
			
			registPlantService.registPlant(registplant);
		
			
		return "redirect:plant-regist.action";
	}
}
