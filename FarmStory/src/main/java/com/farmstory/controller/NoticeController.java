package com.farmstory.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmstory.service.NoticeService;
import com.farmstory.vo.Notice;

@Controller
@RequestMapping(value = "/board")
public class NoticeController {
	
	@Autowired
	@Qualifier("noticeService")
	private NoticeService noticeService;

	@RequestMapping(value = "notice_list.action", method = GET)
	String writeBoard(HttpSession session, Notice irt) {
		irt.setNoticeTitle((String) session.getAttribute("loginuser"));
		noticeService.listBoard(irt);
		return "board/notice_list";
	}

}
