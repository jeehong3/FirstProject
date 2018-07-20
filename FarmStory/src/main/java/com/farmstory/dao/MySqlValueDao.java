package com.farmstory.dao;

import java.util.ArrayList;
import java.util.Date;

import com.farmstory.mapper.ValueMapper;
import com.farmstory.vo.PlantVal;

public class MySqlValueDao implements ValueDao {

	private ValueMapper valueMapper;

	public void setValueMapper(ValueMapper valueMapper) {
		this.valueMapper = valueMapper;
	}

	@Override
	public ArrayList<PlantVal> findValues(String plvDateTime) {
		return valueMapper.selectValues(plvDateTime);
	}

	@Override
	public ArrayList<PlantVal> findDayValues(String plvDateTime) {
		return valueMapper.selectDayValues(plvDateTime);
	}

	
}
