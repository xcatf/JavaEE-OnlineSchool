package com.xor.dao;

import java.util.List;

import com.xor.model.StudentTask;

public interface StudentTaskMapper {
	void saveEntity(StudentTask studentTask);
	
	List<StudentTask> searchEntity();
	
	List<StudentTask> searchEntityByStuId(Integer stuId);
}