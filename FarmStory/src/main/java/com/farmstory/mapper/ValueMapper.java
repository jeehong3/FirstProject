package com.farmstory.mapper;

import java.util.ArrayList;

import com.farmstory.vo.PlantVal;

public interface ValueMapper {

	ArrayList<PlantVal> selectValues(PlantVal plantVal);

	ArrayList<PlantVal> selectDayValues(PlantVal plantVal);

}
