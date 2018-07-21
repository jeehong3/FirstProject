package com.farmstory.service;

import java.util.ArrayList;
import java.util.Date;

import com.farmstory.vo.PlantVal;

public interface ValueService {

	ArrayList<PlantVal> findValues(String PlvDateTime);

	ArrayList<PlantVal> findDayValues(String plvDateTime);



}