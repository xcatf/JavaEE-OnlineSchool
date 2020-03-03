package com.xor.dao;

import java.util.List;

import com.xor.model.Course;

public interface CourseMapper {
	void saveEntity(Course course);
	
	List<Course> searchEntity();
	
	void deleteEntity(Integer id);
	
	void updateEntity(Course course);
	
	Course getEntityById(Integer id);
	
	List<Course> searchEntityByName(String name);
}