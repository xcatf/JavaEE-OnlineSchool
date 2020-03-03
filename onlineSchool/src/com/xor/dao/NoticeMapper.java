package com.xor.dao;

import java.util.List;

import com.xor.model.Notice;

public interface NoticeMapper {
	void saveEntity(Notice notice);
	
	List<Notice> searchEntity();
	
	void deleteEntity(Integer id);
	
	void updateEntity(Notice notice);
	
	Notice getEntityById(Integer id);
}