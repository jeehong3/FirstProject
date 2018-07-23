package com.farmstory.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmstory.service.InterruptService;
import com.farmstory.vo.Interrupt;

@Controller

public class InterruptController {
@Autowired
@Qualifier("interruptService")
private InterruptService interruptService;
//
//	@Autowired
//	@Qualifier("sensorService")
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

	//////////////////////////////////////////////////////////////////////////////////
	// temporary Dummy
	//////////////////////////////////////////////////////////////////////////////////
	// @RequestMapping(value = "/", method = RequestMethod.GET)
	// public String home(Locale locale, Model model) {
	// System.out.println("Home at " + new Date());
	// return "home";
	// }
	// @GetMapping(value = "/hello-arduino.action")
	// @ResponseBody
	// public String helloArduino(int x, String msg) {
	//
	// System.out.printf("X : %d / MESSAGE : %s\n", x, msg);
	//
	//// SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	//// return String.format(
	//// "data received at %s", f.format(new Date()));
	//
	//
	// if (x < 300) {
	// return "turnon";
	// } else {
	// return "turnoff";
	// }
	// }
	//////////////////////////////////////////////////////////////////////////////////
	@RequestMapping(value = "/write.action", method = POST)
	String writeBoard(HttpSession session,Interrupt irt) {
	irt.setIntTitle((String) session.getAttribute("intTitle"));
	interruptService.writeBoard(irt);
	return null;
	}
	

}
