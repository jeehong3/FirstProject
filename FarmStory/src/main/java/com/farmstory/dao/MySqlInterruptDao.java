package com.farmstory.dao;

import com.farmstory.mapper.InterruptMapper;
import com.farmstory.vo.Interrupt;

public class MySqlInterruptDao implements InterruptDao {

	private InterruptMapper interruptMapper;
	
	public void setSensorMapper(InterruptMapper interruptMapper) {
		this.interruptMapper = interruptMapper;
	}
	
	@Override
	public void writeBoard(Interrupt irt) {
		interruptMapper.writeBoard(irt);
	}
}
