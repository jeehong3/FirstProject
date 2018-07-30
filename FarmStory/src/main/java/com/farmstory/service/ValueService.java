package com.farmstory.service;

import java.util.ArrayList;

import com.farmstory.vo.PlantVal;

public interface ValueService {

	ArrayList<PlantVal> findValues(PlantVal plantVal);

	ArrayList<PlantVal> findDayValues(PlantVal plantVal);



}