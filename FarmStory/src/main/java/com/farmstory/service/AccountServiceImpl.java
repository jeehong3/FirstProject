package com.farmstory.service;

import com.farmstory.common.Util;
import com.farmstory.dao.AccountDao;
import com.farmstory.vo.Account;

public class AccountServiceImpl implements AccountService {
	
	private AccountDao accountDao;

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	
	@Override
	public void registerMember(Account account) {
		
		// 전달 받은 비밀번호를 암호화하여 Account vo객체에 다시 저장한다.
		String hashedPw = Util.getHashedString(account.getMemPw(), "SHA-256");
		account.setMemPw(hashedPw);
		
		accountDao.insertMember(account);
		
	}
	
	@Override
	public Account findMember(String memId, String memPw) {
		
		// 전달 받은 비밀번호를 암호화하여 다시 저장한다.
		String hashedPw = Util.getHashedString(memPw, "SHA-256");
		
		return accountDao.selectMember(memId, hashedPw);
	}

}
