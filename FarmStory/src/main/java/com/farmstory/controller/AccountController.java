package com.farmstory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.farmstory.service.AccountService;
import com.farmstory.vo.Account;

@Controller
public class AccountController {
	
	@Autowired
	@Qualifier(value = "accountService")
	private AccountService accountService;
	
	@PostMapping(value = "")
	public void registerMember(Account account) {
		
	}

}
