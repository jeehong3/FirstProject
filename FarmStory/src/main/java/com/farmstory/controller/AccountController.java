package com.farmstory.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 모바일 회원관리 시작	
	
	@GetMapping(value = "/msignin.action")
	@ResponseBody
	public Account signInMoblie(String id, String password){
		
		System.out.printf(id);
		System.out.printf(password);
		
		String hashedPw = Util.getHashedString(password, "SHA-256");
		Account account = accountService.signInMoblie(id, hashedPw);
		
		// 객체를 반환하고 @ResponseBody를 설정한 경우
		// 이 객체를 JSON 문자열로 자동 변환 -> JacksonMapper				
		return account;
		
	}
	
	@GetMapping(value = "/msignup.action")
	@ResponseBody
	public String mSignUp(Account account, BindingResult br) {
		
		System.out.println(account.getMemEmail());
		
		accountService.registerMember(account);
						
		return "success";
	}
	
	

}
