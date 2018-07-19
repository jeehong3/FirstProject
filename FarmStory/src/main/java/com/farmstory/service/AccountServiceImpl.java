package com.farmstory.service;

import com.farmstory.dao.AccountDao;
import com.farmstory.vo.Account;

public class AccountServiceImpl implements AccountService {
	
	private AccountDao accountDao;

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	
	@Override
	public void registerMember(Account account) {
	
		accountDao.insertMember(account);
		
	}

}
