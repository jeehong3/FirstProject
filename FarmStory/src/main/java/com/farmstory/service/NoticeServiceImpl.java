package com.farmstory.service;

import com.farmstory.dao.NoticeDao;
import com.farmstory.vo.Notice;

public class NoticeServiceImpl implements NoticeService  {
	private NoticeDao noticeDao;

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	@Override
	public void writeBoard(Notice irt) {
		noticeDao.writeBoard(irt);
		
	}
}
