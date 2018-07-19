package com.farmstory.mapper;

import java.util.HashMap;

import com.farmstory.vo.Account;

public interface AccountMapper {

	void insertMember(Account account);
	
	Account selectMember(HashMap<String, Object> params);
}
