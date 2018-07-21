package com.farmstory.dao;

import java.util.ArrayList;
import java.util.Date;

import com.farmstory.vo.PlantVal;

public interface ValueDao {

	ArrayList<PlantVal> findValues(String plvDateTime);

	ArrayList<PlantVal> findDayValues(String plvDateTime);

}