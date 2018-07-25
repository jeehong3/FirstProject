package com.farmstory.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmstory.service.NoticeService;
import com.farmstory.vo.Notice;

@Controller
@RequestMapping(value = "board/")
public class NoticeController {
	@Autowired
	@Qualifier("noticeService")
	private NoticeService noticeService;

	@RequestMapping(value = "/notice_list.action", method = GET)
	String listBoard(HttpSession session, Notice not, Model model) {
		List<Notice> boards = noticeService.listBoard();
		model.addAttribute("boards",boards);
		return "board/notice_list";
	}
	@RequestMapping(value = "/notice_insert.action", method=POST)
	String insertBoard(Notice not, HttpSession session) {
		noticeService.insertBoard(not);
		return "redirect:board/notice_list";
	}
	@RequestMapping(value = "",method = GET)
	String deleteBoard(Notice not) {
		noticeService.deleteBoard(not);
		return "redirect:board/notice_list";
	}

}
