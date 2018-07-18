package com.farmstory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farmstory.service.DBTestService;
import com.farmstory.vo.DBTest;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DBTestController {
	
	private static final Logger logger = LoggerFactory.getLogger(DBTestController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	@Qualifier(value = "dbTestService")
	private DBTestService dbTestService;
	
	//@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		System.out.println("commit test!!");
		System.out.println("comment check!!");
		
		return "DBTest/DBTestHome";	
	}
	
	@PostMapping(value="/dbtest.action")
	public String writeDBTest(DBTest dbTest) {
		
		dbTestService.writeDBTest(dbTest);
		
		return "home";
	}
	
	
}
