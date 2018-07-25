package com.farmstory.dao;

import java.util.List;

import com.farmstory.mapper.NoticeMapper;
import com.farmstory.vo.Notice;

public class MySqlNoticeDao implements NoticeDao {

	private NoticeMapper noticeMapper;
	
	public void setNoticeMapper(NoticeMapper noticeMapper) {
		this.noticeMapper = noticeMapper;
	}

	@Override
	public List<Notice> listBoard() {
		return noticeMapper.listBoard();
	}


	
}
