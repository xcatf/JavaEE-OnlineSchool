package com.xor.dao;

import java.util.List;

import com.xor.model.Discuss;

public interface DiscussMapper {

	void saveEntity(Discuss discuss);
	
	List<Discuss> searchEntity();
	
	void deleteEntity(Integer id);
	
	void updateEntity(Discuss discuss);
	
	Discuss getEntityById(Integer id);
}