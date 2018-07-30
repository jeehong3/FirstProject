package com.farmstory.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farmstory.service.ValueService;
import com.farmstory.vo.PlantVal;

@Controller
@RequestMapping(value = "/value")
public class ValueController {
	
	
	@Autowired
	@Qualifier(value = "valueService")
	private ValueService valueService;
	
	@GetMapping(value = "/findTime.action")
	public String findValue(PlantVal plantVal, Model model, String regPotNo) {
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ("yyyy-MM-dd", Locale.KOREA);
		Date currentTime = new Date ();
		String date = mSimpleDateFormat.format (currentTime);
		plantVal.setPlvDateTime(date);
		plantVal.setRegPotNo(regPotNo);
		ArrayList<PlantVal> vals = valueService.findValues(plantVal);
		model.addAttribute("vals", vals);
		model.addAttribute("date", date);
		model.addAttribute("regPotNo", regPotNo);
		return "diary/time";
	}
	
	@PostMapping(value = "/findTime.action")
	public String findValue(String date, PlantVal plantVal, Model model, String regPotNo) {
		plantVal.setPlvDateTime(date);
		plantVal.setRegPotNo(regPotNo);
		ArrayList<PlantVal> vals = valueService.findValues(plantVal);
		model.addAttribute("vals", vals);
		model.addAttribute("date", date);
		model.addAttribute("regPotNo", regPotNo);
		return "diary/time";
	}
	
	@GetMapping(value = "/findDay.action")
	public String findDayValue(PlantVal plantVal, Model model, String regPotNo) {
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ("yyyy-MM-dd", Locale.KOREA);
		Date currentTime = new Date ();
		String date = mSimpleDateFormat.format (currentTime);
		plantVal.setPlvDateTime(date);
		plantVal.setRegPotNo(regPotNo);
		ArrayList<PlantVal> vals = valueService.findDayValues(plantVal);
		model.addAttribute("vals", vals);
		model.addAttribute("date", date);
		model.addAttribute("regPotNo", regPotNo);
		return "diary/day";
	}
	
	@PostMapping(value = "/findDay.action")
	public String findDayValue(String date, PlantVal plantVal, Model model, String regPotNo) {
		plantVal.setPlvDateTime(date);
		plantVal.setRegPotNo(regPotNo);
		ArrayList<PlantVal> vals = valueService.findDayValues(plantVal);
		model.addAttribute("vals", vals);
		model.addAttribute("date", date);
		model.addAttribute("regPotNo", regPotNo);
		return "diary/day";
	}
	
	@GetMapping(value = "/mFindTime.action")
	@ResponseBody
	public ArrayList<PlantVal> mfindValue(String date, PlantVal plantVal, Model model) {
		System.out.println(date);
		plantVal.setPlvDateTime(date);
		ArrayList<PlantVal> vals = valueService.findValues(plantVal);
		return vals;
	}
}
