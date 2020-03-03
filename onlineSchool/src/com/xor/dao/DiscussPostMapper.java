package com.xor.dao;

import java.util.List;

import com.xor.model.DiscussPost;

public interface DiscussPostMapper {
	void saveEntity(DiscussPost discussPost);
	List<DiscussPost> searchEntity(Integer id);
}