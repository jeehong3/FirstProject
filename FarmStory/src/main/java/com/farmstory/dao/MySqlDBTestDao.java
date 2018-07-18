package com.farmstory.dao;

import com.farmstory.mapper.DBTestMapper;
import com.farmstory.vo.DBTest;

public class MySqlDBTestDao implements DBTestDao {

	/* (non-Javadoc)
	 * @see com.farmstory.dao.DBTestDao#insertDBTest(com.farmstory.vo.DBTest)
	 */
	
	private DBTestMapper dbTestMapper;
	
	public void setDbTestMapper(DBTestMapper dbTestMapper) {
		this.dbTestMapper = dbTestMapper;
	}


	@Override
	public void insertDBTest(DBTest dbTest) {
		dbTestMapper.insertDBTest(dbTest);
	}
}
