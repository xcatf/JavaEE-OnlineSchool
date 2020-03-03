package com.xor.dao;

import java.util.List;

import com.xor.model.Task;

public interface TaskMapper {
	void saveEntity(Task task);
	
	List<Task> searchEntity();
	
	void deleteEntity(Integer id);
	
	void updateEntity(Task task);
	
	Task getEntityById(Integer id);
}