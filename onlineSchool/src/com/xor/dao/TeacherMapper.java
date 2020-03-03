package com.xor.dao;

import java.util.List;
import java.util.Map;

import com.xor.model.Teacher;

public interface TeacherMapper {
	void saveEntity(Teacher teacher);
	
	List<Teacher> searchEntity(Map<String, Integer> map);
	
	void deleteEntity(Integer id);
	
	void updateEntity(Teacher teacher);
	
	Teacher getEntityById(Integer id);
	
	Teacher searchEntityByAccount(Map<String, String> map);
	
	Integer countEntityNum();
}