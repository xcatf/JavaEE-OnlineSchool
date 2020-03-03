package com.xor.dao;

import java.util.List;

import com.xor.model.CourseFile;

public interface CourseFileMapper {
	void saveEntity(CourseFile collegeFile);
	
	List<CourseFile> searchEntity(int id);
	
	CourseFile searchEntityById(int id);
	
	List<CourseFile> searchAllEntity();
	
	void deleteEntity(Integer id);
	
	List<CourseFile> searchEntityJoinTeacher();
	
	Integer searchCoinById(Integer id);
}