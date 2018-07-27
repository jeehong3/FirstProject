package com.farmstory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	
	@GetMapping(value = {"/" , "/home.action"})
	public String showHome(@RequestParam(required = false)String checkedLogin, Model model) {
		
		model.addAttribute("checkedLogin", checkedLogin);
		
		return "home";
	}
	
}
