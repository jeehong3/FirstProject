package com.farmstory.mapper;

import java.util.ArrayList;
import java.util.Date;

import com.farmstory.vo.PlantVal;

public interface ValueMapper {

	ArrayList<PlantVal> selectValues(String plvDateTime);

	ArrayList<PlantVal> selectDayValues(String plvDateTime);

}
