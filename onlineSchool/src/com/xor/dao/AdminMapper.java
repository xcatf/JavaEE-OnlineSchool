package com.xor.dao;

import java.util.Map;

import com.xor.model.Admin;

public interface AdminMapper {
	Admin searchEntityByAccount(Map<String, String> map);
}