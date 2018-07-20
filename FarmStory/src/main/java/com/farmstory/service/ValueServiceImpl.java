package com.farmstory.service;

import java.util.ArrayList;
import java.util.Date;

import com.farmstory.dao.ValueDao;
import com.farmstory.vo.PlantVal;

public class ValueServiceImpl implements ValueService {
	
	private ValueDao valueDao;

	public void setValueDao(ValueDao valueDao) {
		this.valueDao = valueDao;
	}

	@Override
	public ArrayList<PlantVal> findValues(String plvDateTime) {
		return valueDao.findValues(plvDateTime);
	}

	@Override
	public ArrayList<PlantVal> findDayValues(String plvDateTime) {
		return valueDao.findDayValues(plvDateTime);
	}


}
