package com.farmstory.dao;

import com.farmstory.mapper.NoticeMapper;
import com.farmstory.vo.Notice;

public class MySqlNoticeDao implements NoticeDao {

	private NoticeMapper noticeMapper;
	
	public void setNoticeMapper(NoticeMapper noticeMapper) {
		this.noticeMapper = noticeMapper;
	}
	
	@Override
	public void writeBoard(Notice irt) {
		noticeMapper.writeBoard(irt);
	}
}
