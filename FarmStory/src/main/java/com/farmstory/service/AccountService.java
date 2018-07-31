package com.farmstory.service;

import com.farmstory.vo.Account;

public interface AccountService {

	void registerMember(Account account);

	Account findMember(String userInputId, String userInputPw);

	String findMemberByPw(String userInputId);

	Account signInMoblie(String id, String password);

	

	
}