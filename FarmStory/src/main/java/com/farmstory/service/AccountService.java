package com.farmstory.service;

import com.farmstory.vo.Account;

public interface AccountService {

	void registerMember(Account account);

	Account findMember(String memId, String memPw);

}