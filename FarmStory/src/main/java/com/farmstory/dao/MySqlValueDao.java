package com.farmstory.dao;

import java.util.ArrayList;

import com.farmstory.mapper.ValueMapper;
import com.farmstory.vo.PlantVal;

public class MySqlValueDao implements ValueDao {

	private ValueMapper valueMapper;

	public void setValueMapper(ValueMapper valueMapper) {
		this.valueMapper = valueMapper;
	}

	@Override
	public ArrayList<PlantVal> findValues(PlantVal plantVal) {
		return valueMapper.selectValues(plantVal);
	}

	@Override
	public ArrayList<PlantVal> findDayValues(PlantVal plantVal) {
		return valueMapper.selectDayValues(plantVal);
	}

	
}
