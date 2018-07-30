package com.farmstory.dao;

import java.util.ArrayList;

import com.farmstory.vo.PlantVal;

public interface ValueDao {

	ArrayList<PlantVal> findValues(PlantVal plantVal);

	ArrayList<PlantVal> findDayValues(PlantVal plantVal);

}