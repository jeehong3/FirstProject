package com.farmstory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.farmstory.service.InterruptService;
import com.farmstory.service.noticeService;
import com.farmstory.vo.Ann;
import com.farmstory.vo.Interrupt;

@Controller
public class InterruptController {

	@Autowired
	@Qualifier(value = "interruptService")
	private InterruptService interruptService;
	
}
