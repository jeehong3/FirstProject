package com.farmstory.service;

import com.farmstory.dao.InterruptDao;
import com.farmstory.vo.Interrupt;

public class InterruptServiceImpl implements InterruptService  {
	private InterruptDao interruptDao;

	public void setInterruptDao(InterruptDao interruptDao) {
		this.interruptDao = interruptDao;
	}

	@Override
	public void writeBoard(Interrupt irt) {
		interruptDao.writeBoard(irt);
		
	}
}
