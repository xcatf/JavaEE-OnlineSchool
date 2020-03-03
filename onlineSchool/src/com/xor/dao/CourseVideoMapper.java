package com.xor.dao;

import java.util.List;

import com.xor.model.CourseVideo;

public interface CourseVideoMapper {
	void saveEntity(CourseVideo collegeVideo);
	
	List<CourseVideo> searchEntity(int id);
	
	List<CourseVideo> searchAllEntity();
	
	CourseVideo getEntityById(Integer id);
	
	List<CourseVideo> searchEntityJoinTeacher();
	
	void deleteEntity(Integer id);
	
	Integer searchCoinById(Integer id);
}