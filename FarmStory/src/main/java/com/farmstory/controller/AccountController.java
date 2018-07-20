package com.farmstory.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.farmstory.common.Util;
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
	public ModelAndView loginMember(String userInputId, String userInputPw, HttpSession session, Account account, ModelAndView mav) {
		
		account = accountService.findMember(userInputId, userInputPw);
			
			
			if (account != null) { // 아이디와 비밀번호가 일치하면 session에 저장한다.
				session.setAttribute("loginuser", account);
				mav.setViewName("home");
			} else { // 아이디와 비밀번호가 일치하지 않으면 실행된다.
				
				// 전달받은 아이디로 비밀번호를 DB에서 찾아온다.
				String memPw = accountService.findMemberByPw(userInputId);
				// 전달 받은 비밀번호를 암호화하여 다시 저장한다.
				String hashedPw = Util.getHashedString(userInputPw, "SHA-256");
				
				// 전달 받은 데이터와 DB데이터가 다른지 비교하여
				// loginCheck 변수값과 함께 mav객체에 담아 브라우저로 보낸다.
				String loginCheck = "";
				if(memPw == null) { // 아이디가 없으면 실행된다.
					loginCheck = "wrongId";
					mav.setViewName("home");
					mav.addObject("loginCheck", loginCheck);
				}else if(hashedPw.equals(memPw) != true){ // DB에서 찾아온 비밀번호와 사용자가 입력한 비밀번호를 비교한다.
					loginCheck = "wrongPw";
					mav.setViewName("home");
					mav.addObject("loginCheck", loginCheck);
				}
			}
		return mav;
	}
	
	@GetMapping(value = "/logout.action")
	public String logoutMember(HttpSession session) {
		
		// session 객체에 담긴 데이터를 삭제한다.
		session.removeAttribute("loginuser");
		
		return "redirect:/home.action";
	}
	
	

}
