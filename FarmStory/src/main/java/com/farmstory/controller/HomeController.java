package com.farmstory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	
	@GetMapping(value = {"/" , "/home.action"})
	public String showHome() {
		
		return "home";
	}
	
}
