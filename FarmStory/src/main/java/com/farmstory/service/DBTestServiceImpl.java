package com.farmstory.service;

import com.farmstory.dao.DBTestDao;
import com.farmstory.vo.DBTest;

public class DBTestServiceImpl implements DBTestService {
	
	/* (non-Javadoc)
	 * @see com.farmstory.service.DBTestService#writeDBTest(com.farmstory.vo.DBTest)
	 */
	private DBTestDao dbTestDao;
	
	public void setDbTestDao(DBTestDao dbTestDao) {
		this.dbTestDao = dbTestDao;
	}

	@Override
	public void writeDBTest(DBTest dbTest) {
		dbTestDao.insertDBTest(dbTest);
	}

}
