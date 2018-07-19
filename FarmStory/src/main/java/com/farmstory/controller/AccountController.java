package com.farmstory.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.farmstory.service.AccountService;
import com.farmstory.vo.Account;

@Controller
public class AccountController {
	
	@Autowired
	@Qualifier(value = "accountService")
	private AccountService accountService;
	
	@PostMapping(value = "/register.action")
	public String registerMember(Account account) {
		
		accountService.registerMember(account);
		
		return "redirect:/home.action";
	}
	
	@PostMapping(value = "/login.action")
	public String loginMember(String memId, String memPw, HttpSession session, Account account) {
		
		account = accountService.findMember(memId, memPw);
		
		if (account != null) {
			session.setAttribute("loginuser", account);
		} else {
			
		}
		
		return "home";
	}
	
	@GetMapping(value = "/logout.action")
	public String logoutMember(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/home.action";
	}
	
	

}
