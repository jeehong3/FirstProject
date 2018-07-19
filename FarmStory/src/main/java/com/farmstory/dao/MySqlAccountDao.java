package com.farmstory.dao;

import com.farmstory.mapper.AccountMapper;
import com.farmstory.vo.Account;

public class MySqlAccountDao implements AccountDao {

	private AccountMapper accountMapper;

	public void setAccountMapper(AccountMapper accountMapper) {
		this.accountMapper = accountMapper;
	}
	
	@Override
	public void insertMember(Account account) {
		
		accountMapper.insertMember(account);
		
	}
	
}
