package com.xor.dao;

import java.util.List;
import java.util.Map;

import com.xor.model.Student;

public interface StudentMapper {
	void saveEntity(Student student);
	
	void deleteEntity(Integer id);
	
	void updateEntity(Student student);
	
	Student getEntityById(Integer id);
	
	Student searchEntityByAccount(Map<String, String> map);
	
	Integer countEntityNum();
	
	List<Student> searchEntityByPage(Map<String, Integer> map);
	
	List<Student> searchEntityByName(String name);
	
	void updateEntityCoin(Integer id);
}