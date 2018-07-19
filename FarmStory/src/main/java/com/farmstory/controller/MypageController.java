package com.farmstory.controller;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmstory.service.MypageService;
import com.farmstory.vo.Myplant;

@Controller
public class MypageController {

	@Autowired
	@Qualifier("mypageService")
	private MypageService mypageService;
	
	
	@RequestMapping(value= "/mypage.action", method = GET)
	public  String bestPlant(Model model, Myplant myplant) {
		
		mypageService.bestPlant(myplant);
		
		return "plant/mypage";
	}
}
