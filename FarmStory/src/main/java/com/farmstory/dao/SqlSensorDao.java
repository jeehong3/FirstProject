package com.farmstory.dao;

import com.farmstory.mapper.SensorMapper;
import com.farmstory.vo.PlantVal;

public class SqlSensorDao implements SensorDao{
	private SensorMapper sensorMapper;
	
	public void setSensorMapper(SensorMapper sensorMapper) {
		this.sensorMapper = sensorMapper;
	}
	@Override
	public void writeSensor(PlantVal plantval) {
		sensorMapper.writeSensor(plantval);
	}
	
	

}
