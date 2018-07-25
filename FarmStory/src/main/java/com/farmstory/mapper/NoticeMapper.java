package com.farmstory.mapper;

import java.util.List;

import com.farmstory.vo.Notice;

public interface NoticeMapper {

	List<Notice> listBoard();

	void insertBoard();

	void deleteBoard();

	
}
