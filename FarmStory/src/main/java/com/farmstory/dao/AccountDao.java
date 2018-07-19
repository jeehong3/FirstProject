package com.farmstory.dao;

import com.farmstory.vo.Account;

public interface AccountDao {

	void insertMember(Account account);

	Account selectMember(String memId, String memPw);

}