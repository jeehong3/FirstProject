package com.farmstory.dao;

import java.util.HashMap;

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
	
	@Override
	public Account selectMember(String memId, String memPw) {
		
		// 넘겨 받은 아이디와 비밀번호 값을
		// DB에서 조회하기 위해 HashMap으로 저장하여 보낸다.
		HashMap<String, Object> params = new HashMap<>();
		params.put("memId", memId);
		params.put("memPw", memPw);
		
		return accountMapper.selectMember(params);
	}
	
}
