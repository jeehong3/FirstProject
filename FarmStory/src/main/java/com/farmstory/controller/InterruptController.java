package com.farmstory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farmstory.service.InterruptService;
import com.farmstory.vo.Interrupt;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class InterruptController {
//
//	@Autowired
//	@Qualifier("interruptService")
//	private InterruptService interruptService;
//
//	@RequestMapping(value = "/list.action", method = GET)
//	public String showListView(Model model) {
//
//		List<Interrupt> boards = interruptService.findBoards();
//
//		model.addAttribute("boards", boards);
//
//		return "board/interrupt/list";
//	}
//
//	@RequestMapping(value = "/detail.action", method = GET)
//	public String showDetailView(int boardNo, Model model) {
//
//		Interrupt board = (Interrupt) interruptService.getInterruptDetail(boardNo);
//
//		model.addAttribute("board", board);
//		return "board/interrupt/detail";
//	}
//	
	@GetMapping(value = "/sensor.action")
	@ResponseBody
	public String helloArduino(int type, int value) {
		
		System.out.printf("X : %d / MESSAGE : %s\n", type, value);
		
		
			return null;
	}
}
