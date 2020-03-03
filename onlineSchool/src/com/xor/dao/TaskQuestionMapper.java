package com.xor.dao;

import java.util.List;

import com.xor.model.TaskQuestion;

public interface TaskQuestionMapper {
	void saveEntity(TaskQuestion taskQuestion);
	
	List<TaskQuestion> searchEntity(Integer taskId);
	
	void deleteEntity(Integer id);
	
	void updateEntity(TaskQuestion taskQuestion);
	
	TaskQuestion getEntityById(Integer id);
}